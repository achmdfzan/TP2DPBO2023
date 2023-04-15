/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tp2dpbo2023;

/**
 *
 * @author afauz
 */
public abstract class Session {
    private static int dev_id;
    private static String nama;
    private static String email;
    private static String password;
    private static String image;

    public static int getDevID() {
        return dev_id;
    }
    
    public static String getNama() {
        return nama;
    }
    
    public static String getEmail() {
        return email;
    }
    
    public static String getPassword() {
        return password;
    }
    
    public static String getImage() {
        return image;
    }
    
    public static void setDevID(int dev_id) {
        Session.dev_id = dev_id;
    }
    
    public static void setNama(String nama) {
        Session.nama = nama;
    }
    
    public static void setEmail(String email) {
        Session.email = email;
    }
    
    public static void setPassword(String password) {
        Session.password = password;
    }
    
    public static void setImage(String image) {
        Session.image = image;
    }
    
    public static void endSession() {
        dev_id = 0;
        nama = "";
        email = "";
        password = "";
        image = "";
    }
}
