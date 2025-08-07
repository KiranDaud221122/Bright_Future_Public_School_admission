
# Bright Future Public School – Online Admission Management System

An ASP.NET Web Forms-based dynamic **Child Admission Application System** for *Bright Future Public School*, allowing parents to seamlessly fill out admission forms online with real-time seat tracking, document uploads, and admin dashboard features.

##  Tech Stack:
- **Frontend**: ASP.NET Web Forms, HTML5, CSS3
- **Backend**: C#, ADO.NET, Stored Procedures
- **Database**: Microsoft SQL Server
- **Payments**: Razorpay Payment Gateway Integration
- **Hosting**: IIS / Local Server (Deployable to Azure or any Windows Server)

---

## Key Features:

**Online Admission Form** with:
- Parent & Child details form
- Auto-fee assignment based on class selection
- File upload for **Birth Certificate**, **Aadhar Card**, and **Passport-size Photo**
- Gender and Blood Group selectors
- Real-time form validations

 **Seat Availability Checker**
- Seat limit: 25 per class
- Automatic restriction once class is full
- Shows alert if seat count exceeds

 **Stored Procedure-based Data Handling**
- Data securely inserted into SQL database using stored procedure `InsertIntoChildAdmission`

**Razorpay Payment Integration**
- Live/test mode payment gateway integration
- Minimum amount validation and secure transaction page

 **Admin Features (coming soon)**:
- Dashboard to view all applications
- Class-wise seat stats
- PDF export & print admission details

---

##  Project Structure
```
/AdmissionForm.aspx           -> Frontend UI Form
/AdmissionForm.aspx.cs        -> Backend logic
/Web.config                   -> Connection string & app settings
/Upload_Aadhar/               -> Aadhar uploads
/Upload_BirthCertificate/     -> Birth certificate uploads
/Upload_PassportPhoto/        -> Passport-size photo uploads
/Database/StoredProcedures.sql-> SQL for Insert & Seat Limit Check
```

---

## How to Run Locally

1. Clone the repo:
   ```bash
   git clone https://github.com/KiranDaud2211/bright-future-admission-system.git
   ```
2. Open in **Visual Studio**
3. Set up your **SQL Server DB** and import provided `StoredProcedures.sql`
4. Update your `Web.config` with the connection string
5. Run the project with IIS Express

---

##  Learning Outcome
- Built a **real-world school admission portal**
- Applied ASP.NET with SQL Server for form submission & validation
- Handled file uploads & session state
- Implemented seat-restriction logic and payment gateway


---

##  Note
All user data (child and parent info) is handled securely. File uploads are stored in server directories, and SQL injection is prevented using stored procedures.
