
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class LabAssignment3Solve1 {

    private static int vertices[], connected[], weight[], dist[];
    private static int adjecent[][], queries[][];
    private static int N_countries, M_edges, X_hotel, Q_missions;

    private static void readTxtFile(String fileName) throws FileNotFoundException, IOException {
        FileReader file = new FileReader(fileName + ".txt");
        BufferedReader br = new BufferedReader(file);

        String str[] = br.readLine().split(" ");
        N_countries = Integer.parseInt(str[0]);
        M_edges = Integer.parseInt(str[1]);
        X_hotel = Integer.parseInt(str[2]);
        Q_missions = Integer.parseInt(str[3]);

        vertices = new int[M_edges];
        connected = new int[M_edges];
        weight = new int[M_edges];
        queries = new int[Q_missions][2];

        String line = br.readLine();
        int i = 0;
        while (true) {
            if (i >= M_edges) {
                while (true) {
                    for (i = 0; i < Q_missions; i++) {
                        String strArr[] = line.split(" ");
                        int que1 = Integer.parseInt(strArr[0]);
                        int que2 = Integer.parseInt(strArr[1]);
                        queries[i][0] = que1;
                        queries[i][1] = que2;

                        line = br.readLine();
                    }
                    break;
                }
                break;
            }

            String strAr[] = line.split(" ");
            vertices[i] = Integer.parseInt(strAr[0]);
            connected[i] = Integer.parseInt(strAr[1]);
            weight[i] = Integer.parseInt(strAr[2]);

            line = br.readLine();
            i++;
        }
    }

    private static void dijkstra(int adjecent[][], int src) {
        Boolean visited[] = new Boolean[M_edges];

        for (int i = 0; i < M_edges; i++) {
            dist[i] = Integer.MAX_VALUE;
            visited[i] = false;
        }

        dist[src] = 0;

        for (int i = 0; i < M_edges - 1; i++) {
            int u = minDistance(dist, visited);

            visited[u] = true;

            for (int v = 0; v < M_edges; v++) {
                if (!visited[v] && adjecent[u][v] != 0
                        && dist[u] != Integer.MAX_VALUE && dist[u] + adjecent[u][v] < dist[v]) {
                    dist[v] = dist[u] + adjecent[u][v];
                }
            }
        }
    }

    private static int minDistance(int dist[], Boolean visited[]) {
        int min = Integer.MAX_VALUE, minIndx = -100;

        for (int v = 0; v < M_edges; v++) {
            if (visited[v] == false && dist[v] <= min) {
                min = dist[v];
                minIndx = v;
            }
        }
        return minIndx;
    }

    public static void main(String[] args) throws IOException {
        readTxtFile("file2");
        adjecent = new int[M_edges][M_edges];

        for (int i = 0; i < M_edges; i++) {
            adjecent[vertices[i] - 1][connected[i] - 1] = weight[i];
        }

        dist = new int[M_edges];

        for (int i = 0; i < Q_missions; i++) {
            dijkstra(adjecent, queries[i][0] - 1);
            int step1 = dist[X_hotel - 1];
            dijkstra(adjecent, X_hotel - 1);
            int step2 = dist[queries[i][1] - 1];
            System.out.println("Case " + (i + 1) + ": n" + (step1 + step2));
        }
    }
}
