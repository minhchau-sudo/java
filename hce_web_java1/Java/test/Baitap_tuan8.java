/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package baitap_tuan8;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author MAY
 */
public class Baitap_tuan8 {
   static class Bai1 {
        public static int timUCLN(int a, int b) {
            while (b != 0) {
                int temp = b;
                b = a % b;
                a = temp;
            }
            return a;
        }

        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            System.out.print("Nhap a: ");
            int a = sc.nextInt();
            System.out.print("Nhap b: ");
            int b = sc.nextInt();

            int ucln = timUCLN(a, b);
            int bcnn = (a * b) / ucln;

            System.out.println("UCLN cua " + a + " va " + b + " la: " + ucln);
            System.out.println("BCNN cua " + a + " va " + b + " la: " + bcnn);
        }
    }


    static class Bai2 {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            System.out.print("Nhap ngay: ");
            int ngay = sc.nextInt();
            System.out.print("Nhap thang: ");
            int thang = sc.nextInt();
            System.out.print("Nhap nam: ");
            int nam = sc.nextInt();

            int[] daysInMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

           
            if ((nam % 400 == 0) || (nam % 4 == 0 && nam % 100 != 0)) {
                daysInMonth[1] = 29;
            }

      
            ngay++;
            if (ngay > daysInMonth[thang - 1]) {
                ngay = 1;
                thang++;
                if (thang > 12) {
                    thang = 1;
                    nam++;
                }
            }

            System.out.printf("Ngay ke tiep la: %02d/%02d/%d\n", ngay, thang, nam);
        }
    }

  
    static class Bai3 {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            System.out.print("Nhap ngay: ");
            int ngay = sc.nextInt();
            System.out.print("Nhap thang: ");
            int thang = sc.nextInt();
            System.out.print("Nhap nam: ");
            int nam = sc.nextInt();

            int[] daysInMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

            if ((nam % 400 == 0) || (nam % 4 == 0 && nam % 100 != 0)) {
                daysInMonth[1] = 29;
            }

      
            ngay--;
            if (ngay < 1) {
                thang--;
                if (thang < 1) {
                    thang = 12;
                    nam--;
                }
                ngay = daysInMonth[thang - 1];
            }

            System.out.printf("Ngay hom qua la: %02d/%02d/%d\n", ngay, thang, nam);
        }
    }

   
    static class Bai4 {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            int n;

      
            do {
                System.out.print("Nhap n (0 < n < 100): ");
                n = sc.nextInt();
            } while (n <= 0 || n >= 100);

            int[] arr = new int[n];
            for (int i = 0; i < n; i++) {
                do {
                    System.out.print("arr[" + i + "] (0 < value < 100): ");
                    arr[i] = sc.nextInt();
                } while (arr[i] <= 0 || arr[i] >= 100);
            }

            
            int max = arr[0], max2 = Integer.MIN_VALUE;
            int idxMax = 0, idxMax2 = -1;

            for (int i = 1; i < n; i++) {
                if (arr[i] > max) {
                    max2 = max;
                    idxMax2 = idxMax;
                    max = arr[i];
                    idxMax = i;
                } else if (arr[i] > max2 && arr[i] != max) {
                    max2 = arr[i];
                    idxMax2 = i;
                }
            }

            System.out.println("Phan tu lon nhat: " + max + " tai chi so " + idxMax);
            if (max2 != Integer.MIN_VALUE) {
                System.out.println("Phan tu lon thu hai: " + max2 + " tai chi so " + idxMax2);
            } else {
                System.out.println("Khong co phan tu lon thu hai");
            }

       
            for (int i = 0; i < n - 1; i++) {
                for (int j = i + 1; j < n; j++) {
                    if (arr[i] < arr[j]) {
                        int temp = arr[i];
                        arr[i] = arr[j];
                        arr[j] = temp;
                    }
                }
            }
            System.out.println("Mang sau khi sap xep giam dan: " + Arrays.toString(arr));

          
            System.out.print("Nhap x: ");
            int x = sc.nextInt();
            int[] newArr = new int[n + 1];
            int pos = 0;
            while (pos < n && arr[pos] > x) {
                pos++;
            }
            for (int i = 0; i < pos; i++) {
                newArr[i] = arr[i];
            }
            newArr[pos] = x;
            for (int i = pos; i < n; i++) {
                newArr[i + 1] = arr[i];
            }
            System.out.println("Mang sau khi chen " + x + ": " + Arrays.toString(newArr));
        }
    }

    static class Bai5 {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            System.out.print("Nhap xau ky tu: ");
            String s = sc.nextLine();

            // Chuẩn hóa: loại bỏ dấu cách thừa
            s = s.trim().replaceAll("\\s+", " ");

            // Chuyển đổi: ký tự đầu mỗi từ viết hoa, còn lại viết thường
            String[] words = s.split(" ");
            StringBuilder result = new StringBuilder();

            for (String word : words) {
                if (word.length() > 0) {
                    result.append(Character.toUpperCase(word.charAt(0)))
                          .append(word.substring(1).toLowerCase())
                          .append(" ");
                }
            }

            System.out.println("Xau sau khi chuan hoa: " + result.toString().trim());
        }
    }

   
    static class Bai6 {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            System.out.print("Nhap xau ky tu: ");
            String s = sc.nextLine().trim();

            String[] words = s.split("\\s+");
            String longestWord = "";
            int position = -1;

            for (int i = 0; i < words.length; i++) {
                if (words[i].length() > longestWord.length()) {
                    longestWord = words[i];
                    position = i;
                }
            }

            System.out.println("Tu dai nhat: \"" + longestWord + "\"");
            System.out.println("Do dai: " + longestWord.length() + " ky tu");
            System.out.println("Xuat hien o vi tri thu " + (position + 1));
        }
    }

    static class Bai7 {
        static ArrayList<Integer> list = new ArrayList<>();
        static Scanner sc = new Scanner(System.in);

        public static void main(String[] args) {
            int choice;
            do {
                System.out.println("\n========== MENU ==========");
                System.out.println("1. Nhap so phan tu cua mang");
                System.out.println("2. Nhap mang");
                System.out.println("3. Xuat mang (3 cach)");
                System.out.println("4. Chen phan tu theo vi tri");
                System.out.println("5. Chen vao dau mang");
                System.out.println("6. Chen vao cuoi mang");
                System.out.println("7. Xoa phan tu theo vi tri");
                System.out.println("8. Xoa phan tu theo gia tri");
                System.out.println("9. Gan gia tri moi cho vi tri so 2");
                System.out.println("10. Kiem tra phan tu x");
                System.out.println("11. Sap xep tang dan");
                System.out.println("12. Sap xep giam dan");
                System.out.println("13. Copy mang moi qua mang cu");
                System.out.println("14. Cat phan tu trong mang");
                System.out.println("15. So sanh 2 mang (tim phan tu giong nhau)");
                System.out.println("16. Noi mang moi voi mang cu");
                System.out.println("17. Hien thi phan tu dau va cuoi");
                System.out.println("18. Xoa het tat ca phan tu");
                System.out.println("0. Thoat");
                System.out.print("Chon chuc nang: ");
                choice = sc.nextInt();

                switch (choice) {
                    case 1 -> {
                        System.out.print("Nhap so phan tu: ");
                        int n = sc.nextInt();
                        list = new ArrayList<>(n);
                    }
                    case 2 -> {
                        System.out.println("Nhap cac phan tu (nhap 0 de ket thuc):");
                        while (true) {
                            int val = sc.nextInt();
                            if (val == 0) break;
                            list.add(val);
                        }
                    }
                    case 3 -> {
                        if (list.isEmpty()) {
                            System.out.println("Mang rong!");
                            break;
                        }
                        // Cach 1: toString
                        System.out.println("Cach 1: " + list);
                        // Cach 2: for-each
                        System.out.print("Cach 2: ");
                        for (int x : list) System.out.print(x + " ");
                        System.out.println();
                        // Cach 3: Iterator hasNext
                        System.out.print("Cach 3: ");
                        Iterator<Integer> it = list.iterator();
                        while (it.hasNext()) {
                            System.out.print(it.next() + " ");
                        }
                        System.out.println();
                    }
                    case 4 -> {
                        System.out.print("Nhap vi tri can chen: ");
                        int pos = sc.nextInt();
                        System.out.print("Nhap gia tri: ");
                        int val = sc.nextInt();
                        if (pos >= 0 && pos <= list.size()) {
                            list.add(pos, val);
                            System.out.println("Da chen thanh cong!");
                        } else {
                            System.out.println("Vi tri khong hop le!");
                        }
                    }
                    case 5 -> {
                        System.out.print("Nhap gia tri chen vao dau: ");
                        list.add(0, sc.nextInt());
                    }
                    case 6 -> {
                        System.out.print("Nhap gia tri chen vao cuoi: ");
                        list.add(sc.nextInt());
                    }
                    case 7 -> {
                        System.out.print("Nhap vi tri can xoa: ");
                        int delPos = sc.nextInt();
                        if (delPos >= 0 && delPos < list.size()) {
                            list.remove(delPos);
                            System.out.println("Da xoa thanh cong!");
                        } else {
                            System.out.println("Vi tri khong hop le!");
                        }
                    }
                    case 8 -> {
                        System.out.print("Nhap gia tri can xoa: ");
                        Integer delVal = sc.nextInt();
                        if (list.remove(delVal)) {
                            System.out.println("Da xoa thanh cong!");
                        } else {
                            System.out.println("Khong tim thay gia tri!");
                        }
                    }
                    case 9 -> {
                        if (list.size() > 2) {
                            System.out.print("Nhap gia tri moi cho vi tri so 2: ");
                            list.set(2, sc.nextInt());
                            System.out.println("Da gan thanh cong!");
                        } else {
                            System.out.println("Mang co it hon 3 phan tu!");
                        }
                    }
                    case 10 -> {
                        System.out.print("Nhap x: ");
                        int x = sc.nextInt();
                        if (list.contains(x)) {
                            System.out.println("Da tim thay phan tu " + x);
                        } else {
                            System.out.println("Khong tim thay phan tu " + x);
                        }
                    }
                    case 11 -> {
                        Collections.sort(list);
                        System.out.println("Da sap xep tang dan!");
                    }
                    case 12 -> {
                        Collections.sort(list, Collections.reverseOrder());
                        System.out.println("Da sap xep giam dan!");
                    }
                    case 13 -> {
                        ArrayList<Integer> newList = new ArrayList<>(list);
                        System.out.println("Mang moi copy tu mang cu: " + newList);
                    }
                    case 14 -> {
                        System.out.print("Nhap vi tri bat dau cat: ");
                        int start = sc.nextInt();
                        System.out.print("Nhap so luong phan tu can cat: ");
                        int len = sc.nextInt();
                        if (start >= 0 && start < list.size()) {
                            int end = Math.min(start + len, list.size());
                            List<Integer> subList = list.subList(start, end);
                            System.out.println("Cac phan tu duoc cat: " + subList);
                        } else {
                            System.out.println("Vi tri bat dau khong hop le!");
                        }
                    }
                    case 15 -> {
                        ArrayList<Integer> anotherList = new ArrayList<>();
                        System.out.print("Nhap so phan tu cua mang moi: ");
                        int m = sc.nextInt();
                        System.out.println("Nhap cac phan tu cua mang moi:");
                        for (int i = 0; i < m; i++) {
                            anotherList.add(sc.nextInt());
                        }
                        System.out.print("Cac gia tri giong nhau giua 2 mang: ");
                        boolean found = false;
                        for (Integer num : list) {
                            if (anotherList.contains(num)) {
                                System.out.print(num + " ");
                                found = true;
                            }
                        }
                        if (!found) System.out.print("Khong co");
                        System.out.println();
                    }
                    case 16 -> {
                        ArrayList<Integer> appendList = new ArrayList<>();
                        System.out.print("Nhap so phan tu cua mang can noi: ");
                        int k = sc.nextInt();
                        System.out.println("Nhap cac phan tu:");
                        for (int i = 0; i < k; i++) {
                            appendList.add(sc.nextInt());
                        }
                        list.addAll(appendList);
                        System.out.println("Da noi mang thanh cong!");
                    }
                    case 17 -> {
                        if (!list.isEmpty()) {
                            System.out.println("Phan tu dau tien: " + list.get(0));
                            System.out.println("Phan tu cuoi cung: " + list.get(list.size() - 1));
                        } else {
                            System.out.println("Mang rong!");
                        }
                    }
                    case 18 -> {
                        list.clear();
                        System.out.println("Da xoa het tat ca cac phan tu!");
                    }
                    case 0 -> System.out.println("Tam biet!");
                    default -> System.out.println("Chuc nang khong hop le!");
                }
            } while (choice != 0);
        }
    }


    static class Bai8 {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            String input;

        
            do {
                System.out.print("Nhap chuoi theo dinh dang (MSS-xxxxxxxxx-Ho): ");
                input = sc.nextLine();
                if (!input.matches("MSS-\\d{9}-[A-Za-z]+")) {
                    System.out.println("Sai dinh dang! Vui long nhap lai!");
                }
            } while (!input.matches("MSS-\\d{9}-[A-Za-z]+"));

            System.out.println("Chuoi hop le: " + input);

          
            String[] parts = input.split("-");
            String maSoSV = parts[1];
            String hoSV = parts[2];

            System.out.println("Ma so sinh vien: " + maSoSV);
            System.out.println("Ho sinh vien: " + hoSV);

           
            String filename = "sinhvien.txt";
            try (FileWriter fw = new FileWriter(filename)) {
                fw.write(hoSV);
                System.out.println("Da ghi ho sinh vien vao file " + filename);
            } catch (IOException e) {
                System.out.println("Loi khi ghi file: " + e.getMessage());
            }

       
            try (BufferedReader br = new BufferedReader(new FileReader(filename))) {
                String line = br.readLine();
                System.out.println("Doc tu file: " + line);
            } catch (IOException e) {
                System.out.println("Loi khi doc file: " + e.getMessage());
            }

            // Tính tổng các số trong mã số sinh viên
            int sum = 0;
            for (int i = 0; i < maSoSV.length(); i++) {
                sum += (maSoSV.charAt(i) - '0');
            }
            System.out.println("Tong cac chu so trong ma so sinh vien: " + sum);
        }
    }
     //8
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("CHON BAI TAP (1-8):");
        System.out.println("1. Tim UCLN, BCNN");
        System.out.println("2. Tim ngay ke tiep");
        System.out.println("3. Tim ngay hom qua");
        System.out.println("4. Mang so nguyen (tim max/max2, sap xep, chen)");
        System.out.println("5. Chuan hoa xau ky tu");
        System.out.println("6. Tim tu dai nhat trong xau");
        System.out.println("7. ArrayList voi menu day du chuc nang");
        System.out.println("8. ArrayList, String, doc/ghi file");
        System.out.print("Nhap so bai: ");
        int choice = sc.nextInt();

        switch (choice) {
            case 1:
                Bai1.main(new String[]{});
                break;
            case 2:
                Bai2.main(new String[]{});
                break;
            case 3:
                Bai3.main(new String[]{});
                break;
            case 4:
                Bai4.main(new String[]{});
                break;
            case 5:
                Bai5.main(new String[]{});
                break;
            case 6:
                Bai6.main(new String[]{});
                break;
            case 7:
                Bai7.main(new String[]{});
                break;
            case 8:
                Bai8.main(new String[]{});
                break;
            default:
                System.out.println("Khong hop le!");
        }
    }
}