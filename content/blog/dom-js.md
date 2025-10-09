---
title: "Thao Tác với DOM trong JavaScript"
date: 2025-10-06
categories: ["javascript"]
tags: ["javascript", "dom", "web development"]
author: "Nguyễn Ngọc Hưng"
readTime: "6 phút đọc"
image: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về Document Object Model (DOM) và cách sử dụng JavaScript để thao tác với các phần tử HTML trên trang web."
---
# Thao Tác với DOM trong JavaScript
Document Object Model (DOM) là một giao diện lập trình ứng dụng (API) cho các tài liệu HTML và XML. DOM cung cấp một cấu trúc cây (tree structure) đại diện cho trang web, cho phép các ngôn ngữ lập trình như JavaScript truy cập và thao tác với các phần tử trên trang. Trong bài viết này, chúng ta sẽ tìm hiểu về DOM và cách sử dụng JavaScript để thao tác với các phần tử HTML.
## Hiểu về DOM
DOM được tổ chức dưới dạng một cây các nút (node), trong đó mỗi nút đại diện cho một phần tử, thuộc tính hoặc văn bản trong tài liệu. Bạn có thể sử dụng JavaScript để truy cập, thay đổi hoặc xóa các nút này. Dưới đây là một số phương thức phổ biến để thao tác với DOM:
`javascript
// Lấy phần tử theo ID
const element = document.getElementById("myElement");

// Lấy tất cả các phần tử theo lớp
const elements = document.getElementsByClassName("myClass");

// Lấy phần tử đầu tiên theo thẻ
const firstElement = document.querySelector("div");

// Thay đổi nội dung văn bản
element.innerText = "Nội dung mới";

// Thêm lớp CSS
element.classList.add("new-class");

// Xóa phần tử
element.remove();
`
## Thêm và Xóa Phần Tử
Bạn có thể sử dụng JavaScript để thêm hoặc xóa các phần tử HTML trên trang web. Dưới đây là ví dụ về cách thêm một phần tử mới và xóa một phần tử hiện có:
`javascript// Thêm phần tử mới
const newElement = document.createElement("p");
newElement.innerText = "Đây là một đoạn văn mới.";
document.body.appendChild(newElement);

// Xóa phần tử
const elementToRemove = document.getElementById("elementToRemove");
elementToRemove.remove();
`
## Xử Lý Sự Kiện
`javascript
// Thêm sự kiện click cho nút
const button = document.getElementById("myButton");
button.addEventListener("click", function() {
    alert("Nút đã được nhấn!");
});
`JavaScript cho phép bạn thêm các trình xử lý sự kiện (event handlers) để phản hồi các hành động của người dùng, như nhấn nút, di chuột, hoặc nhập liệu.
## Kết Luận
DOM là một phần quan trọng của phát triển web, cho phép bạn tương tác và thao tác với các phần tử HTML trên trang web. Bằng cách sử dụng JavaScript để truy cập và thay đổi DOM, bạn có thể tạo ra các trải nghiệm người dùng động và tương tác hơn. Hãy tiếp tục khám phá và thực hành để nắm vững kỹ năng thao tác với DOM trong JavaScript!
