# Java SHA1 Example

```java
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class JavaSHA1Example {
    public static void main(String[] args) {
        String input = "hello world";
        String hash = sha1(input);
        System.out.println("SHA-1 hash: " + hash);
    }

    public static String sha1(String input) {
        StringBuilder hash = new StringBuilder();
        try {
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            byte[] hashedBytes = sha.digest(input.getBytes());
            for (byte b : hashedBytes) {
                hash.append(String.format("%02x", b));
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return hash.toString();
    }
}
```
    