import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * @ClassName Dome
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/25 10:48
 * @Version 1.0
 */
public class Dome {


    public static void main(String[] args) {
        String url = "http://192.168.3.7:8080/taige/ajaxupload/20190425103614807.jpg";
        downloadPicture(url);
    }

    //链接url下载图片
    private static void downloadPicture(String urlList) {
        URL url = null;
        int imageNumber = 0;
        try {
            url = new URL(urlList);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());

            String imageName = "F:/test.jpg";

            FileOutputStream fileOutputStream = new FileOutputStream(new File(imageName));
            ByteArrayOutputStream output = new ByteArrayOutputStream();

            byte[] buffer = new byte[1024];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            byte[] context = output.toByteArray();
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
