---
title: "Contact"
date: 2025-10-04
description: "Liên hệ với Tôi qua email, mạng xã hội hoặc biểu mẫu."
---

## 📬 Liên hệ

Nếu bạn muốn kết nối, hợp tác hoặc đơn giản chỉ muốn trò chuyện, hãy liên hệ với tôi qua các kênh sau:

- 📧 Email: [h.com.vha@gmail.com](mailto:h.com.vha@gmail.com)  
- 🐦 Twitter: [@pixelpushers](https://twitter.com/)  
- 💼 LinkedIn: [Pixel Pushers](https://linkedin.com/)  
- 💻 GitHub: [Jegan902](https://github.com/)  

---

## 📝 Form liên hệ

Hiện tại blog đang chạy trên Hugo (tĩnh), nên form liên hệ có thể được kết nối qua dịch vụ như:  
- [Formspree](https://formspree.io/)  
- [Netlify Forms](https://docs.netlify.com/forms/setup/)  

Ví dụ cấu hình form với Formspree:

```html
<form action="https://formspree.io/f/your-id" method="POST" class="space-y-4">
  <label>
    Tên:
    <input type="text" name="name" class="border p-2 w-full">
  </label>
  <label>
    Email:
    <input type="email" name="email" class="border p-2 w-full">
  </label>
  <label>
    Tin nhắn:
    <textarea name="message" rows="5" class="border p-2 w-full"></textarea>
  </label>
  <button type="submit" class="px-4 py-2 bg-indigo-600 text-white rounded-lg">
    Gửi
  </button>
</form>
