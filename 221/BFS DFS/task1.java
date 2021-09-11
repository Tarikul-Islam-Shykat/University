package pkgfinal;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Task01 {

    public static void main(String[] args) {
        
            Scanner sc = new Scanner(System.in);
            
            int v = Integer.parseInt(sc.nextLine());
            int e = Integer.parseInt(sc.nextLine());
            
            String[] splitA;

            int[][] matrix = new int[v][v];

            for(int i = 0; i < e; ++i){
                
                String line = sc.nextLine(); 
                
                splitA = line.split(" ");
                
                int x = Integer.parseInt(splitA[0]);
                int y = Integer.parseInt(splitA[1]);
                
                matrix[x][y] = 1;
                
                matrix[y][x] = 1;
            }
            
            int destination = Integer.parseInt(sc.nextLine());
           
            bfs(matrix, 0, destination);
            
            
       
    }
    

    public static void bfs(int[][] a, int s, int d) {
        
        int[] color = new int[a.length];
        
        int[] level = new int[a.length];
        
        int[] parent = new int[a.length];
        
        Queue<Integer> q = new LinkedList<>();

        for (int i = 0; i < a.length; i++) {
            
            color[i] = 0; 
            
            level[i] = Integer.MAX_VALUE; 
            
            parent[i] = -1;
            
        }
        
        color[s] = 1; //grey
        
        level[s] = 0; 

        q.add(s); // addind to the list

        while (!q.isEmpty()) {
            
            int u = q.poll(); //FIFO
            
            for (int i = 0; i < a.length; ++i) {
                
                if (a[u][i] == 1 && color[i] == 0 ) {// white
                    
                    color[i] = 1;// Grey
                    
                    level[i] = level[u] + 1; //Level++
                    
                    parent[i] = u; 
                    
                    q.add(i);
                    
                    if (i == d) {
                        
                        System.out.println(level[i]);
                        
                    }
                }
            }
         
        }
    }
}
