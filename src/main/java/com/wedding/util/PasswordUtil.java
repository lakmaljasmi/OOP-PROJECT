package com.wedding.util;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HexFormat;

public final class PasswordUtil {

    private static final String APP_PEPPER = "wedding-planning-v1";

    private PasswordUtil() {
    }

    public static String hash(String username, String plainPassword) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            String payload = APP_PEPPER + "|" + username + "|" + plainPassword;
            byte[] digest = md.digest(payload.getBytes(StandardCharsets.UTF_8));
            return HexFormat.of().formatHex(digest);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 not available", e);
        }
    }

    public static boolean matches(String username, String plainPassword, String storedHash) {
        return hash(username, plainPassword).equalsIgnoreCase(storedHash);
    }
}
