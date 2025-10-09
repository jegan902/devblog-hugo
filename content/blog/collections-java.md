---
title: "Làm việc với Collections Framework trong Java"
date: 2024-01-06
categories: ["java"]
tags: ["java", "collections", "data-structure"]
author: "Nguyễn Ngọc Hưng"
position: "Lập trình viên"
readTime: "8 phút đọc"
image: "https://images.unsplash.com/photo-1555066931-4365d14bab8c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Hướng dẫn chi tiết cách sử dụng Collections Framework để quản lý dữ liệu hiệu quả trong Java."
---

# Làm việc với Collections Framework trong Java

Hướng dẫn chi tiết về cách sử dụng **Collections Framework** để quản lý dữ liệu hiệu quả trong Java.

---

## 📘 Collections Framework là gì?

**Collections Framework** là một kiến trúc thống nhất để biểu diễn và thao tác với các tập hợp dữ liệu như `List`, `Set`, `Map` cùng các lớp triển khai như `ArrayList`, `HashMap`, v.v.  
Nó giúp việc quản lý dữ liệu trở nên **linh hoạt, nhất quán và dễ bảo trì hơn**.

---

## 🧩 Các điểm chính cần ghi nhớ

- Hiểu đúng các khái niệm cơ bản trong Collections.  
- Thực hành thường xuyên với các ví dụ thực tế.  
- Áp dụng vào các dự án cá nhân.  
- Tham khảo tài liệu chính thức từ Oracle.

---

## 🔹 Các loại Collections phổ biến

### 1. List
- Đại diện cho một tập hợp **có thứ tự**, **cho phép phần tử trùng lặp**.  
- Các lớp phổ biến: `ArrayList`, `LinkedList`, `Vector`.

**Ví dụ:**
```java
List<String> names = new ArrayList<>();
names.add("Alice");
names.add("Bob");
names.add("Alice"); // Cho phép trùng lặp
```

### 2. Set
`Set` đại diện cho một **tập hợp không có thứ tự** và **không cho phép các phần tử trùng lặp**.  
Mỗi phần tử trong `Set` là duy nhất, giúp loại bỏ các giá trị trùng khi lưu trữ dữ liệu.

Các lớp phổ biến triển khai `Set` gồm:

- **`HashSet`** – lưu trữ phần tử không theo thứ tự, tốc độ truy cập nhanh.  
- **`LinkedHashSet`** – duy trì thứ tự chèn phần tử.  
- **`TreeSet`** – sắp xếp phần tử theo thứ tự tự nhiên hoặc theo `Comparator` tùy chọn.  

**Ví dụ:**
```java
import java.util.HashSet;
import java.util.Set;

public class ExampleSet {
    public static void main(String[] args) {
        Set<String> uniqueNames = new HashSet<>();
        uniqueNames.add("Alice");
        uniqueNames.add("Bob");
        uniqueNames.add("Alice"); // Phần tử trùng sẽ bị bỏ qua

        System.out.println(uniqueNames); // Kết quả: [Alice, Bob]
    }
}
```

**Khi nào nên dùng `Set`:**  
Sử dụng `Set` khi bạn cần đảm bảo **mỗi phần tử chỉ xuất hiện một lần** trong tập hợp, ví dụ như danh sách mã sinh viên, ID người dùng, hoặc các thẻ (tags) không trùng lặp.

---

### 3. Map
`Map` là một cấu trúc dữ liệu **lưu trữ các cặp key-value** (khóa - giá trị).  
Mỗi **key là duy nhất**, còn **value có thể trùng lặp**.  
Nó rất hữu ích khi cần tra cứu giá trị nhanh theo khóa, tương tự như từ điển.

Các lớp phổ biến triển khai `Map` gồm:

- **`HashMap`** – lưu trữ dữ liệu không theo thứ tự, tốc độ truy cập cao.  
- **`LinkedHashMap`** – duy trì thứ tự chèn phần tử.  
- **`TreeMap`** – sắp xếp các khóa theo thứ tự tự nhiên hoặc `Comparator`.

**Ví dụ:**
```java
import java.util.HashMap;
import java.util.Map;

public class ExampleMap {
    public static void main(String[] args) {
        Map<Integer, String> students = new HashMap<>();
        students.put(1, "Alice");
        students.put(2, "Bob");
        students.put(3, "Charlie");

        System.out.println(students.get(2)); // Kết quả: Bob
    }
}
```

**Khi nào nên dùng `Map`:**  
Khi bạn cần ánh xạ giữa **một khóa duy nhất** và **một giá trị**, ví dụ như danh sách sinh viên (ID → Tên), danh mục sản phẩm, hoặc cấu hình ứng dụng.

---

### 4. Queue
`Queue` (hàng đợi) tuân theo nguyên tắc **FIFO (First In - First Out)**, nghĩa là phần tử được thêm vào đầu tiên sẽ được lấy ra đầu tiên.  
Phù hợp cho các tác vụ xử lý tuần tự hoặc lập lịch công việc.

Các lớp phổ biến:
- **`LinkedList`** (triển khai `Queue`)  
- **`PriorityQueue`** – sắp xếp phần tử theo mức ưu tiên

**Ví dụ:**
```java
import java.util.LinkedList;
import java.util.Queue;

public class ExampleQueue {
    public static void main(String[] args) {
        Queue<String> queue = new LinkedList<>();
        queue.add("Task 1");
        queue.add("Task 2");
        queue.add("Task 3");

        System.out.println(queue.poll()); // Kết quả: Task 1
        System.out.println(queue.peek()); // Kết quả: Task 2
    }
}
```

---

## 🏁 Kết luận
`Collections Framework` là nền tảng mạnh mẽ giúp Java xử lý dữ liệu một cách linh hoạt và hiệu quả.  
Hiểu rõ sự khác biệt giữa `List`, `Set`, `Map` và `Queue` giúp bạn chọn đúng công cụ cho từng tình huống, tối ưu hiệu năng và mã nguồn rõ ràng hơn.
