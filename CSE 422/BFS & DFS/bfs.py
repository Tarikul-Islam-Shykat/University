graph = {
    '5': ['3', '7'],
    '3': ['2', '4'],
    '7': ['8'],
    '2': [],
    '4': ['8'],
    '8': []
}
# demo tree

visited = []
queue = []


def bfs(visited, graph, node):
    visited.append(node) # appending the first visited node
    queue.append(node) # also appending it in to queue

    while queue:
        m = queue.pop(0) # always pop the 1st item in the list
        '''
        whats happening here, suppose you went to node 5, then you explore 3,7 > list in that time[5,3,7]
        so they will be added to queue, then you need to explore 3, 
        as you already explore 5, you need to pop the first item and then the second item will come in its position which is 3.
        then you explore 3
        '''
        print(m, end= " ")

        for neigbor in graph[m]: # exploring all the nearest node
            if neigbor not in visited: # checking if the node is already visited or not.
                visited.append(neigbor)
                queue.append(neigbor)



if __name__ == '__main__':
    print("Following bfs")
    bfs(visited, graph, "5")
