
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class LabAssignment3Solve2 {

    private static int vertices, edges, source, destination;
    private static int vertice[], connected[], weight[], yellow[], adjecent[][];
    private static final int orphan = -1;
    private static String town[] = {"Mouchak", "Rampura", "Panthapath", "Shahahbagh", "Dhanmondi",
        "Lalmatia", "Badda", "Hatirjheel", "Nilkhet", "TSC", "Dhaka University", "BUET"};

    private static void readTxtFile(String fileName) throws FileNotFoundException, IOException {
        FileReader file = new FileReader(fileName + ".txt");
        BufferedReader br = new BufferedReader(file);

        vertices = Integer.parseInt(br.readLine());
        edges = Integer.parseInt(br.readLine());

        vertice = new int[edges];
        connected = new int[edges];
        weight = new int[edges];

        String line = br.readLine(), strAr[];
        int i = 0;
        while (true) {
            if (i >= edges) {
                source = Integer.parseInt(line);
                destination = Integer.parseInt(br.readLine());
                line = br.readLine();
                strAr = line.split(",");
                yellow = new int[strAr.length];
                for (int j = 0; j < strAr.length; j++) {
                    yellow[j] = Integer.parseInt(strAr[j]);
                }
                break;
            }
            strAr = line.split(",");
            vertice[i] = Integer.parseInt(strAr[0]);
            connected[i] = Integer.parseInt(strAr[1]);
            weight[i] = Integer.parseInt(strAr[2]);

            line = br.readLine();
            i++;
        }
    }

    private static void dijkstra(int[][] adjecent, int source) {

        int[] shortestDistances = new int[vertices];
        boolean[] visited = new boolean[vertices];

        for (int vIndx = 0; vIndx < vertices; vIndx++) {
            shortestDistances[vIndx] = Integer.MAX_VALUE;
            visited[vIndx] = false;
        }

        shortestDistances[source] = 0;
        int[] parents = new int[vertices];
        parents[source] = orphan;

        for (int i = 1; i < vertices; i++) {
            int closestVertex = 0;
            int shortestDistance = Integer.MAX_VALUE;
            for (int vIndx = 0; vIndx < vertices; vIndx++) {
                if (!visited[vIndx] && shortestDistances[vIndx] < shortestDistance) {
                    closestVertex = vIndx;
                    shortestDistance = shortestDistances[vIndx];
                }
            }
            visited[closestVertex] = true;
            for (int vIndx = 0; vIndx < vertices; vIndx++) {
                int weightOf = adjecent[closestVertex][vIndx];

                if (weightOf > 0 && ((shortestDistance + weightOf) < shortestDistances[vIndx])) {
                    parents[vIndx] = closestVertex;
                    shortestDistances[vIndx] = shortestDistance + weightOf;
                }
            }
        }
        getPath(source, shortestDistances, parents);
    }

    private static void getPath(int source, int[] distances, int[] parents) {
        int vertices = distances.length;

        for (int vIndx = 0; vIndx < vertices; vIndx++) {
            if (vIndx == destination) {
                printPath(vIndx, parents);
                System.out.println();
            }
        }
    }

    private static void printPath(int currentVertex, int[] parents) {
        if (currentVertex == orphan) {
            return;
        }
        printPath(parents[currentVertex], parents);
        System.out.print(town[currentVertex] + "->");
    }

    private static boolean linearSearch(int arr[], int e) {

        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == e) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) throws IOException {
        readTxtFile("file");

        adjecent = new int[vertices][vertices];

        for (int i = 0; i < edges; i++) {
            if ((linearSearch(yellow, vertice[i]) == false) && (linearSearch(yellow, connected[i]) == false)) {
                adjecent[vertice[i]][connected[i]] = weight[i];
            }
        }
        dijkstra(adjecent, source);
    }
}
