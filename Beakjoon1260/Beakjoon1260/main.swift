/*
 *  백준 1260번 문제 - DFS와 BFS
 */

import Foundation

class Beakjoon1260 {
    var visited: [Int] = Array(repeating: 0, count: 100001)
    var graph: [[Int]] = Array(repeating: Array(repeating: 0,count:1001), count: 1001)
    var N = 0   // 정점의 개수
    var M = 0   // 간선의 개수
    var V = 0   // 시작할 정점 번호

    func getData() {
        let input = readLine()!.components(separatedBy: " ").map({ Int($0)! })
        N = input[0]
        M = input[1]
        V = input[2]
        
        for _ in 1 ... M {
            let input = readLine()!.components(separatedBy: " ").map({ Int($0)! })
            graph[input[0]][input[1]] = 1
            graph[input[1]][input[0]] = 1
        }
        
        resultPrints()
    }
    
    func DFS(_ start: Int) {
        visited[start] = 1
        print(start, terminator: " ")
        for i in 1 ... N{
            if visited[i] == 0 && graph[start][i] == 1{
                DFS(i)
            }
        }
    }

    func BFS(_ start: Int) {
        var queue = [Int]()
        queue.append(start)
        visited[start] = 1
        
        while !queue.isEmpty {
            let x = queue.removeFirst()
            print(x, terminator: " ")
            
            for i in 1 ... N {
                if visited[i] == 0 && graph[x][i] == 1 {
                    queue.append(i)
                    visited[i] = 1
                }
            }
        }
    }
    
    func resultPrints(){
        DFS(V)
        visited = Array(repeating: 0, count: 100001) // 방문 노드 초기화
        print("")
        BFS(V)
    }
}

let beakjoon1260 = Beakjoon1260()
beakjoon1260.getData()
