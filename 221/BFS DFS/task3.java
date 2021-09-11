import java.util.Iterator;
import java.util.LinkedList;
import java.util.Scanner;

public class bfs {
    
        public static void main(String args[]){
            
        Scanner sc = new Scanner(System.in);

        int vertices = sc.nextInt();
        int edge = sc.nextInt();

        bfs g = new bfs(edge);

        for(int i=0; i<edge; i++){
            int u = sc.nextInt();
            int v = sc.nextInt();
            
            g.addEdge(u, v);
        }

        int lina = sc.nextInt();

        g.BFS(lina);

        int participants = sc.nextInt();
        int source[] = new int[participants];

        for(int i=0; i<participants; i++)
        {
            source[i] = sc.nextInt();
        }
            
        

        int flag = 1000000000;
        
        for(int i=0; i<participants; i++){
            
            flag = Math.min(flag, dist[source[i]]);
            
        }

        System.out.println(flag);
    }
        
        
    private int V, NMAX = 100000 + 5;
    private LinkedList<Integer> adj[];
    static int dist[] = new int[100000];

    bfs(int v){
        
        V = NMAX;
        
        adj = new LinkedList[v + 1];
        for (int i=0; i<=v; ++i)
        {
            adj[i] = new LinkedList();
        }
    }

    void addEdge(int num1, int num2){
        
        adj[num2].add(num1);
        
    }

    void BFS(int check){
        
        boolean visited[] = new boolean[V];

        dist[check] = 0;
        
        LinkedList<Integer> queue = new LinkedList<Integer>();

        visited[check]=true;
        queue.add(check);

        while (queue.size() != 0){
            
            check = queue.poll();
            
            Iterator<Integer> i = adj[check].listIterator();
            
            while (i.hasNext()){
                
                int n = i.next();
                
                if (!visited[n]){
                    
                    visited[n] = true;
                    queue.add(n);
                    dist[n] = dist[check] + 1;
                    
                }
            }
        }
    }
}
