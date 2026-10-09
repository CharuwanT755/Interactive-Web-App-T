# 📊 Amazon Products & Discount Analytics Dashboard
### แดชบอร์ดวิเคราะห์และเปรียบเทียบ Category ของ Product และ Discount Percentage

แดชบอร์ดแบบ Interactive สำหรับการวิเคราะห์ข้อมูลสินค้า Amazon จากไฟล์ `amazon.csv` (1,466 รายการ) พัฒนาขึ้นโดยเน้นการเปรียบเทียบเชิงลึกระหว่าง **Category** และการวิเคราะห์ **Discount Percentage** อย่างละเอียด

---

## 🚀 วิธีการเปิดใช้งาน (Quick Start)

สามารถเปิดใช้งานได้ 2 รูปแบบง่ายๆ:

1. **เปิดตรงผ่าน Browser (ไม่ต้องติดตั้งโปรแกรมเพิ่ม)**:
   - ดับเบิลคลิกที่ไฟล์ [`index.html`](file:///c:/Users/Administrator/Downloads/archive%20%281%29/755/index.html) เพื่อเปิดใน Google Chrome, Microsoft Edge หรือ Firefox
   - หากเปิดผ่าน `file://` แล้วต้องการโหลดข้อมูลชุดเต็มทั้งหมด 1,466 รายการ ให้คลิกปุ่ม **"โหลดไฟล์ CSV"** หรือ **ลากไฟล์ `amazon.csv` มาวางบนหน้าจอ**
2. **เปิดผ่าน Batch script หรือ Local Server**:
   - ดับเบิลคลิกที่ไฟล์ [`run_dashboard.bat`](file:///c:/Users/Administrator/Downloads/archive%20%281%29/755/run_dashboard.bat)

---

## 🎯 ฟังก์ชันเด่นที่ออกแบบมาเป็นพิเศษ (Key Features)

### 1. ⚖️ ระบบเปรียบเทียบ Category ของ Product (Category Comparison Tool)
*ฟังก์ชันหลักที่เน้นเป็นพิเศษตามความต้องการ:*
- **Head-to-Head Comparison (หมวดหมู่ A vs หมวดหมู่ B vs ตัวเลือกเสริม C)**:
  - เลือกระดับการเปรียบเทียบได้ทั้ง **หมวดหมู่หลัก (Main Category)** เช่น `Electronics`, `Computers&Accessories`, `Home&Kitchen` หรือ **หมวดหมู่ย่อย (Sub-Category)** เช่น `USBCables`, `SmartTelevisions`, `SmartWatches`, `Mice` เป็นต้น
- **Scorecards & Delta Indicators (วัดผลแพ้-ชนะ)**:
  - **ส่วนลดเฉลี่ย (Average Discount %)** พร้อมระบุส่วนต่าง (เช่น A ลดมากกว่า B +12.5%)
  - **ส่วนลดมัธยฐานและส่วนลดสูงสุด (Median & Max Discount %)**
  - **ราคาเดิมเฉลี่ย vs ราคาขายจริงหลังลด (Actual vs Discounted Price)**
  - **มูลค่าประหยัดเฉลี่ยต่อชิ้น (Average Savings ₹)**
  - **เรตติ้งเฉลี่ย (Average Customer Rating ★)** และจำนวนรีวิว
- **กราฟเปรียบเทียบแบบ Interactive**:
  - 🕸️ **Multi-Metric Radar Chart**: เปรียบเทียบ 5 มิติ (Discount %, Rating Score, Savings Value, Review Popularity, Catalog Share)
  - 📊 **Discount Tiers Grouped Bar Chart**: เปรียบเทียบสัดส่วนสินค้าในแต่ละช่วงส่วนลด (`0-20%`, `21-40%`, `41-60%`, `61-80%`, `>80%`) ของแต่ละหมวด
  - 💰 **Actual vs Discounted Price Bar Chart**: เปรียบเทียบระดับราคาก่อนและหลังลด
- **Side-by-Side Top Deals**: กล่องแสดงรายการ 5 สินค้าลดราคาหนักที่สุดของหมวด A ชนกับหมวด B
- **All Categories Comparison Matrix**: ตารางเปรียบเทียบสรุปทุกหมวดหมู่ในระบบ คลิกหัวตารางเพื่อจัดอันดับ (Sort) ได้ทันที

---

### 2. 🏷️ การวิเคราะห์ Discount Percentage เชิงลึก (Discount Analysis)
- **Discount Tiers Breakdown**:
  - แบ่งระดับส่วนลด 5 ระดับ พร้อมแสดงจำนวนสินค้าและเรตติ้งเฉลี่ยของแต่ละระดับ
- **Mega Deals Showcase (≥ 70% Off)**:
  - คัดกรองสินค้าที่ลดราคากระหน่ำที่สุดในระบบ
- **Sweet Spot Deals (ส่วนลด ≥ 50% และเรตติ้ง ≥ 4.2 ดาว)**:
  - ค้นหาดีลที่ "คุ้มค่าที่สุด" โดยพิจารณาความพึงพอใจของผู้ใช้งานควบคู่กับส่วนลด
- **Correlation Scatter Plots**:
  - **Discount % vs Customer Rating**: วิเคราะห์ว่าสินค้ายิ่งลดราคาเยอะ คุณภาพหรือเรตติ้งตกต่ำลงหรือไม่
  - **Actual Price vs Discount %**: วิเคราะห์ว่าสินค้าราคาแพงให้เปอร์เซ็นต์ส่วนลดน้อยกว่าสินค้าราคาประหยัดหรือไม่

---

### 3. 🔍 การสำรวจและค้นหาสินค้า (Interactive Product Explorer)
- **Multi-Filter & Instant Search**:
  - ค้นหาคำสำคัญ (Product Name, ID)
  - ตัวกรอง Main Category และ Sub-Category แบบไดนามิก
  - Slider กรองช่วงส่วนลดขั้นต่ำ (เช่น กรองเฉพาะสินค้าที่ลด 40% ขึ้นไป)
  - ตัวกรองเรตติ้งขั้นต่ำ (เช่น ≥ 4.0 ดาว)
  - จัดเรียงลำดับตาม: ส่วนลดสูงสุด, ราคาต่ำสุด, เรตติ้งสูงสุด, ยอดรีวิวสูงสุด
- **ตารางแสดงผลอัจฉริยะ**:
  - แสดงภาพตัวอย่างสินค้า (คลิกเพื่อดูรูปภาพขยาย Lightbox ได้)
  - ป้ายระดับส่วนลดแบบ Color-coded
  - ราคาเดิม (ขีดฆ่า) และราคาโปรโมชั่น
  - ลิงก์ตรงเปิดหน้ารายละเอียดสินค้าจริงบน Amazon
  - Pagination แบ่งหน้า และปุ่ม **Export to CSV** บันทึกข้อมูลที่กรองแล้วออกมาใช้งานต่อ

---

### 4. 🎨 ดีไซน์และประสบการณ์ใช้งาน
- รองรับภาษาไทยและภาษาอังกฤษ
- สลับโหมดมืด / สว่าง (Dark / Light Theme Toggle)
- รองรับ Responsive บนหน้าจอทุกขนาด (มือถือ แท็บเล็ต คอมพิวเตอร์)
- ประมวลผล CSV ด้วยความเร็วสูงในฝั่ง Client ภายในไม่กี่มิลลิวินาที
