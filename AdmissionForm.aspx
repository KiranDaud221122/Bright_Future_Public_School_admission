<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmissionForm.aspx.cs" Inherits="Bright_Future_Public_School.AdmissionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bright Future Public School - Admissions</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-school me-2"></i>Bright Future Public School
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="Home.aspx">Return To Home</a>
                    </li>


                    <div class="school-info ms-lg-3">
                        <div><i class="fas fa-map-marker-alt me-2"></i>MG Road, Pune, Maharashtra, India - 411001</div>
                        <div class="mt-1"><i class="fas fa-phone-alt me-2"></i>+91-9876543210</div>
                    </div>
            </div>
        </div>
    </nav>




    <!-- Admission Form -->
    <section class="form-section" id="admission">
        <div class="container">
            <h2 class="section-title">Admission Form</h2>

            <div class="form-container">
                <h3 class="form-title">Fill Admission Form for 2025-26 Session</h3>
                <form id="admissionForm" runat="server">

                    <!-- Child's Details -->
                    <div class="card mb-4">
                        <div class="card-header">Child's Details</div>
                        <div class="card-body">

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Child's Full Name</label>
                                    <asp:TextBox ID="txtChildName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvChildName" runat="server"
                                        ControlToValidate="txtChildName"
                                        ErrorMessage="Child's Name is required"
                                        CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Date of Birth</label>
                                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDOB" runat="server"
                                        ControlToValidate="txtDOB"
                                        ErrorMessage="DOB is required"
                                        CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Age</label>
                                    <asp:TextBox ID="txtage" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                                        ControlToValidate="txtage"
                                        ErrorMessage="Age is required"
                                        CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Blood Group</label>
                                    <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-select">
                                        <asp:ListItem Text="Select Blood Group" Value="" />
                                        <asp:ListItem>A+</asp:ListItem>
                                        <asp:ListItem>A-</asp:ListItem>
                                        <asp:ListItem>B+</asp:ListItem>
                                        <asp:ListItem>B-</asp:ListItem>
                                        <asp:ListItem>O+</asp:ListItem>
                                        <asp:ListItem>O-</asp:ListItem>
                                        <asp:ListItem>AB+</asp:ListItem>
                                        <asp:ListItem>AB-</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvBloodGroup" runat="server"
                                        ControlToValidate="ddlBloodGroup"
                                        ErrorMessage="Blood Group is required"
                                        CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                        </div>

                        <div class="row g-4 p-3">
                            <!-- Gender -->
                            <div class="col-md-6">
                                <label class="form-label">Gender</label>
                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="">-- Select Gender --</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="ddlGender"
                                    InitialValue=""
                                    ErrorMessage="Gender is required"
                                    ForeColor="Red" Display="Dynamic" />
                            </div>

                            <!-- Nationality -->
                            <div class="col-md-6">
                                <label class="form-label">Nationality</label>
                                <asp:TextBox ID="txtNationality" runat="server" CssClass="form-control" Placeholder="Indian" />
                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="txtNationality"
                                    ErrorMessage="Required"
                                    ForeColor="Red" Display="Dynamic" />
                                <asp:RegularExpressionValidator runat="server"
                                    ControlToValidate="txtNationality"
                                    ValidationExpression="^[A-Za-z\s]{2,50}$"
                                    ErrorMessage="Only letters"
                                    ForeColor="Red" Display="Dynamic" />
                            </div>

                            <!-- Religion -->
                            <div class="col-md-6">
                                <label class="form-label">Religion</label>
                                <asp:TextBox ID="txtReligion" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="txtReligion"
                                    ErrorMessage="Required"
                                    ForeColor="Red" Display="Dynamic" />
                                <asp:RegularExpressionValidator runat="server"
                                    ControlToValidate="txtReligion"
                                    ValidationExpression="^[A-Za-z\s]{2,50}$"
                                    ErrorMessage="Only letters"
                                    ForeColor="Red" Display="Dynamic" />
                            </div>

                            <!-- cast -->
                            <div class="col-md-6">
                                <label class="form-label">Cast</label>
                                <asp:TextBox ID="txtcast" runat="server" CssClass="form-control" Placeholder="Open,EWS, SEBC, SC,ST" />
                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="txtcast"
                                    ErrorMessage="Required"
                                    ForeColor="Red" Display="Dynamic" />
                                <asp:RegularExpressionValidator runat="server"
                                    ControlToValidate="txtcast"
                                    ValidationExpression="^[A-Za-z\s]{2,50}$"
                                    ErrorMessage="Only letters"
                                    ForeColor="Red" Display="Dynamic" />
                            </div>

                            <!-- Previous School -->
                            <div class="col-md-6">
                                <label class="form-label">Previous School Name</label>
                                <asp:TextBox ID="txtPrevSchool" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="txtPrevSchool"
                                    ErrorMessage="Required"
                                    ForeColor="Red" Display="Dynamic" />
                            </div>

                            <!-- Previous Class -->
                            <div class="col-md-6">
                                <label class="form-label">Previous Class</label>
                                <asp:TextBox ID="txtPrevClass" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="txtPrevClass"
                                    ErrorMessage="Required"
                                    ForeColor="Red" Display="Dynamic" />
                            </div>
                        </div>
                    </div>



                    <!-- Parent's Details -->
                    <div class="card mb-4">
                        <div class="card-header">Parent's Details</div>
                        <div class="card-body">
                            <!-- Father's Details -->
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Father's Full Name</label>
                                    <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFatherName" runat="server"
                                        ControlToValidate="txtFatherName" ErrorMessage="Father's Name is required"
                                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Father's Email</label>
                                    <asp:TextBox ID="txtFatherEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFatherEmail" runat="server"
                                        ControlToValidate="txtFatherEmail" ErrorMessage="Father's Email is required"
                                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revFatherEmail" runat="server"
                                        ControlToValidate="txtFatherEmail" CssClass="text-danger" Display="Dynamic"
                                        ErrorMessage="Invalid Email Format"
                                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Father's Contact Number</label>
                                    <asp:TextBox ID="txtFatherContact" runat="server" CssClass="form-control"></asp:TextBox>
                                    <div class="form-text">10 digits only</div>
                                    <asp:RequiredFieldValidator ID="rfvFatherContact" runat="server"
                                        ControlToValidate="txtFatherContact" ErrorMessage="Contact number is required"
                                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revFatherContact" runat="server"
                                        ControlToValidate="txtFatherContact" CssClass="text-danger" Display="Dynamic"
                                        ErrorMessage="Enter 10 digit number"
                                        ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Father's Occupation</label>
                                    <asp:TextBox ID="txtFatherOccupation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Mother's Details -->
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Mother's Full Name</label>
                                    <asp:TextBox ID="txtMotherName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvMotherName" runat="server"
                                        ControlToValidate="txtMotherName" ErrorMessage="Mother's Name is required"
                                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Mother's Email</label>
                                    <asp:TextBox ID="txtMotherEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvMotherEmail" runat="server"
                                        ControlToValidate="txtMotherEmail" ErrorMessage="Mother's Email is required"
                                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revMotherEmail" runat="server"
                                        ControlToValidate="txtMotherEmail" CssClass="text-danger" Display="Dynamic"
                                        ErrorMessage="Invalid Email Format"
                                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Mother's Contact Number</label>
                                    <asp:TextBox ID="txtMotherContact" runat="server" CssClass="form-control"></asp:TextBox>
                                    <div class="form-text">10 digits only</div>
                                    <asp:RequiredFieldValidator ID="rfvMotherContact" runat="server"
                                        ControlToValidate="txtMotherContact" ErrorMessage="Contact number is required"
                                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revMotherContact" runat="server"
                                        ControlToValidate="txtMotherContact" CssClass="text-danger" Display="Dynamic"
                                        ErrorMessage="Enter 10 digit number"
                                        ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Mother's Occupation</label>
                                    <asp:TextBox ID="txtMotherOccupation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label required">Parent's Home Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                                    ControlToValidate="txtAddress" ErrorMessage="Address is required"
                                    CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>



                    <!-- Documents Upload -->
                    <div class="card mb-4">
                        <div class="card-header">Documents Upload</div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label class="form-label required">Birth Certificate</label>
                                <asp:FileUpload ID="fuBirthCertificate" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="rfvBirthCert" runat="server"
                                    ControlToValidate="fuBirthCertificate" InitialValue=""
                                    ErrorMessage="Birth Certificate is required"
                                    CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3">
                                <label class="form-label required">Passport Size Photo</label>
                                <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="rfvPhoto" runat="server"
                                    ControlToValidate="fuPhoto" InitialValue=""
                                    ErrorMessage="Passport Size Photo is required"
                                    CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Aadhar Card (Optional)</label>
                                <asp:FileUpload ID="fuAadhar" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>

                    <!-- Class Selection -->
                    <div class="card mb-4 p-3">
                        <h3 class="mb-3">Class Selection</h3>

                        <!-- Class Dropdown -->
                        <div class="mb-3">
                            <label class="form-label">Select Class</label>
                            <asp:DropDownList ID="class" runat="server" CssClass="form-select"
                                onchange="updateFees()" ErrorMessage="Please Select Class">
                            </asp:DropDownList>
                        </div>

                        <!-- Fees -->
                        <div class="mb-3">
                            <label class="form-label">Fees</label>
                            <asp:TextBox ID="fees" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="okclass" runat="server"
                                ControlToValidate="fees"
                                ErrorMessage="Required"
                                ForeColor="red" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                   <!-- Submit Button -->
<div class="d-grid">
    <asp:Button ID="Button1" runat="server"
        Text="Enroll Now"
        CssClass="btn btn-apply btn-lg"
        OnClick="btnSubmit_Click" />
</div>




                </form>


            </div>
        </div>




    </section>

    <!-- Footer -->
    <footer class="footer" id="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-5">
                    <h4 class="footer-title">Bright Future Public School</h4>
                    <p>Established in 1995, we are committed to providing quality education with modern teaching methodologies and holistic development of students.</p>
                    <div class="mt-4">
                        <a href="#" class="btn btn-outline-light"><i class="fab fa-facebook-f me-2"></i>Facebook</a>
                        <a href="#" class="btn btn-outline-light ms-2"><i class="fab fa-instagram me-2"></i>Instagram</a>
                    </div>
                </div>

                <div class="col-md-4 mb-5">
                    <h4 class="footer-title">Quick Links</h4>
                    <div class="footer-links">
                        <a href="Home.aspx"><i class="fas fa-chevron-right me-2"></i>Home</a>
                        <a href="AboutUs.aspx"><i class="fas fa-chevron-right me-2"></i>About Us</a>
                        <a href="AdmissionForm.aspx"><i class="fas fa-chevron-right me-2"></i>Admission Form</a>
                        <a href="ContactUs.aspx"><i class="fas fa-chevron-right me-2"></i>Contact</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <h4 class="footer-title">Contact Us</h4>
                    <div class="contact-info">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div>MG Road, Pune, Maharashtra, India - 411001</div>
                    </div>

                    <div class="contact-info">
                        <div class="contact-icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div>+91-9876543210</div>
                    </div>

                    <div class="contact-info">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div>admissions@brightfuturepune.edu.in</div>
                    </div>

                    <div class="contact-info">
                        <div class="contact-icon">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div>Office Hours: 8:00 AM - 4:00 PM (Mon-Sat)</div>
                    </div>
                </div>
            </div>

            <hr class="mt-5 mb-4" style="border-color: rgba(255,255,255,0.2);">

            <div class="text-center">
                <p>&copy; 2025 Bright Future Public School. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
