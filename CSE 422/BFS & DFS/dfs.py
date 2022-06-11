import numpy as np

graph = {
  '5' : ['3','7'],
  '3' : ['2', '4'],
  '7' : ['8'],
  '2' : [],
  '4' : ['8'],
  '8' : []
}

visited = []
stack  = []

def unique(list1):
    x = np.array(list1)
    print(np.unique(x))

def dfs(visited, graph, node):
    visited.append(node)


    for item in graph[node]:
        if item not in visited:
            visited.append(item)
            dfs(visited, graph, item)



if __name__ == '__main__':
    print("Following dfs")
    dfs(visited, graph, "5")
    df = []

    for item in visited:
        if item not in df:
            df.append(item)

    print(df)

'''
this code do have some flaws, what i did, 
took each node, then explored them recursively,
i do get all iteration i have to make, 
but at the end i only took those which matters.
'''
