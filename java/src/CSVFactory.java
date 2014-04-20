import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

public abstract class CSVFactory<T> {

    private String fileName;

    public CSVFactory(String fileName) {
        this.fileName = fileName;
    }

    public String getFileName() {
        return fileName;
    }

    public List<T> parseFile(boolean containsHeader) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(fileName));
            String currentLine = reader.readLine();
            int lineNum = 1;

            // skip header line if requested
            if (currentLine != null && containsHeader) {
                currentLine = reader.readLine();
                ++lineNum;
            }

            List<T> result = new ArrayList<T>();
            while (currentLine != null) {
                T item = parseLine(currentLine, lineNum);
                if (item != null) {
                    result.add(item);
                }
                currentLine = reader.readLine();
                ++lineNum;
            }

            return result;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    protected abstract T buildFromFields(String[] fields) throws Exception;

    private T parseLine(String line, int lineNum) {
        if (line.isEmpty()) {
            return null;
        }

        try {
            return buildFromFields(line.split(","));
        } catch (Exception e) {
            String message = "Error parsing file \"" + fileName + "\"; Line " + lineNum + ": " + e;
            throw new RuntimeException(message);
        }
    }

}
