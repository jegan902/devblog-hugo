---
title: "Lập Trình Đa Luồng trong Java"
date: 2025-10-06
categories: ["java"]
tags: ["java", "multithreading", "concurrency"]
author: "Nguyễn Ngọc Hưng"
readTime: "7 phút đọc"
image: "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về lập trình đa luồng trong Java và cách sử dụng các công cụ để quản lý đồng thời."
---
# Lập Trình Đa Luồng trong Java
Lập trình đa luồng (multithreading) là một kỹ thuật quan trọng trong phát triển phần mềm, cho phép một ứng dụng thực hiện nhiều tác vụ cùng một lúc. Java cung cấp một mô hình đa luồng mạnh mẽ, giúp tối ưu hóa hiệu suất và cải thiện trải nghiệm người dùng. Trong bài viết này, chúng ta sẽ tìm hiểu về lập trình đa luồng trong Java và cách sử dụng các công cụ để quản lý đồng thời.
## Hiểu về Đa Luồng
Đa luồng là khả năng của một chương trình để thực hiện nhiều luồng (threads) cùng một lúc. Mỗi luồng đại diện cho một dòng điều khiển riêng biệt trong chương trình, có thể chạy song song với các luồng khác. Điều này giúp tận dụng tối đa tài nguyên hệ thống và cải thiện hiệu suất của ứng dụng.
## Tạo và Quản Lý Luồng trong Java
Trong Java, bạn có thể tạo luồng bằng cách kế thừa lớp Thread hoặc triển khai giao diện Runnable. Dưới đây là ví dụ về cả hai cách:
### Kế thừa lớp Thread
`java
class MyThread extends Thread {
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Thread: " + i);
        }
    }
}
public class ThreadExample {
    public static void main(String[] args) {
        MyThread thread1 = new MyThread();
        MyThread thread2 = new MyThread();
        thread1.start();
        thread2.start();
    }
}
`
### Triển khai giao diện Runnable   
`java
class MyRunnable implements Runnable {
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Runnable: " + i);
        }
    }
}
public class RunnableExample {
    public static void main(String[] args) {
        Thread thread1 = new Thread(new MyRunnable());
        Thread thread2 = new Thread(new MyRunnable());
        thread1.start();
        thread2.start();
    }
}
`
## Đồng Bộ Hóa Luồng
Khi nhiều luồng truy cập và thay đổi cùng một tài nguyên chung, có thể xảy ra các vấn đề về đồng bộ hóa (synchronization). Java cung cấp từ khóa synchronized để đảm bảo rằng chỉ một luồng có thể truy cập vào một phương thức hoặc khối mã tại một thời điểm.
`java
class Counter {
    private int count = 0;

    public synchronized void increment() {
        count++;
    }

    public int getCount() {
        return count;
    }
}
public class SyncExample {
    public static void main(String[] args) throws InterruptedException {
        Counter counter = new Counter();
        Thread t1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });
        Thread t2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });
        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println("Final count: " + counter.getCount());
    }
}
`
## Lợi Ích của Đa Luồng
- **Tăng hiệu suất**: Tận dụng tối đa tài nguyên hệ thống bằng cách thực hiện nhiều tác vụ cùng lúc.
- **Cải thiện trải nghiệm người dùng**: Giúp ứng dụng phản hồi nhanh hơn bằng cách xử lý các tác vụ nặng trong luồng riêng biệt.
- **Quản lý tài nguyên hiệu quả**: Giúp tối ưu hóa việc sử dụng CPU và bộ nhớ.
## Kết Luận 
Lập trình đa luồng là một kỹ thuật quan trọng trong phát triển phần mềm, giúp cải thiện hiệu suất và trải nghiệm người dùng. Bằng cách hiểu và áp dụng các khái niệm về luồng, đồng bộ hóa và quản lý tài nguyên, bạn có thể xây dựng các ứng dụng Java hiệu quả và mạnh mẽ. Hãy tiếp tục khám phá và thực hành để nâng cao kỹ năng lập trình đa luồng của bạn!
