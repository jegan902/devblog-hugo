---
title: "Hiểu về Closures trong JavaScript"
date: 2025-10-06
categories: ["javascript"]
tags: ["javascript", "closures", "scope"]
author: "Nguyễn Ngọc Hưng"
readTime: "5 phút đọc"
image: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về closures trong JavaScript, cách chúng hoạt động và ứng dụng thực tế."
---
# Hiểu về Closures trong JavaScript
Closures là một khái niệm quan trọng trong JavaScript, giúp bạn hiểu cách các biến và hàm tương tác với nhau trong phạm vi (scope). Trong bài viết này, chúng ta sẽ khám phá khái niệm closures, cách chúng hoạt động và những ứng dụng thực tế của chúng trong lập trình JavaScript.
## Closures là gì?
Closures là một hàm có quyền truy cập vào biến từ phạm vi chứa nó, ngay cả khi hàm đó được gọi bên ngoài phạm vi chứa. Điều này có nghĩa là một hàm bên trong có thể "nhớ" và sử dụng các biến từ hàm bên ngoài mà nó được định nghĩa.
## Cách hoạt động của Closures
Khi một hàm được tạo ra, nó có thể truy cập vào các biến từ phạm vi bên ngoài của nó. Khi hàm bên ngoài kết thúc, các biến trong phạm vi của nó thường sẽ bị xóa khỏi bộ nhớ. Tuy nhiên, nếu có một hàm bên trong vẫn còn tham chiếu đến các biến đó, chúng sẽ không bị xóa và vẫn có thể được truy cập.
Dưới đây là một ví dụ đơn giản về closures:
`javascript
function outerFunction() {
  let count = 0; // Biến trong phạm vi bên ngoài
  function innerFunction() {
    count++;
    console.log(count);
  }
  return innerFunction;
}
const counter = outerFunction();
counter(); // In ra 1
counter(); // In ra 2
counter(); // In ra 3
`
Trong ví dụ trên, innerFunction là một closure vì nó có quyền truy cập vào biến count từ outerFunction, ngay cả khi outerFunction đã kết thúc.
## Ứng dụng của Closures
Closures có nhiều ứng dụng hữu ích trong lập trình JavaScript, bao gồm:
- **Tạo biến riêng tư**: Bạn có thể sử dụng closures để tạo các biến riêng tư mà không thể truy cập từ bên ngoài.
- **Hàm tạo (Factory functions)**: Sử dụng closures để tạo các hàm với trạng thái riêng biệt.
- **Hàm callback**: Closures thường được sử dụng trong các hàm callback để giữ trạng thái.
## Lưu ý khi sử dụng Closures
- Tránh tạo ra các closures không cần thiết, vì chúng có thể giữ tham chiếu đến các biến và gây rò rỉ bộ nhớ.
- Hãy cẩn thận với việc sử dụng closures trong vòng lặp, vì chúng có thể tạo ra hành vi không mong muốn.
## Kết luận
Closures là một khái niệm mạnh mẽ trong JavaScript, giúp bạn quản lý phạm vi và trạng thái của các biến một cách hiệu quả. Bằng cách hiểu và sử dụng closures đúng cách, bạn có thể viết mã JavaScript linh hoạt và dễ bảo trì hơn. Hãy tiếp tục thực hành và khám phá thêm về closures để nâng cao kỹ năng lập trình của bạn!
