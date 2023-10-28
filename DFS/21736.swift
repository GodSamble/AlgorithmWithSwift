import Foundation

// TODO: DFS 정석과도 같은 문제 [헌내기는 친구가 필요해]

var dx = [-1, 1, 0, 0]
var dy = [0, 0, -1, 1]

var cnt = 0

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var graph = [[Character]]()

for _ in 0..<n {
    let row = Array(readLine()!.trimmingCharacters(in: .whitespacesAndNewlines))
    graph.append(row)
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

//TODO: DFS 정석
func dfs(_ x: Int, _ y: Int) {
    visited[x][y] = true
    if graph[x][y] == "P" {
        cnt += 1
    }
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i] // 상하좌우
        if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny] { // 양수 전제 하에 && 방문안했으면
            if graph[nx][ny] != "X" {
                dfs(nx, ny) // 재귀함수
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == "I" {
            dfs(i, j)
        }
    }
}

if cnt == 0 {
    print("TT")
} else {
    print(cnt)
}
