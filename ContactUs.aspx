<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Bright_Future_Public_School.contact_us" %>



<!DOCTYPE html>
<html lang="en">
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
                        <a class="nav-link" href="Home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.aspx">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdmissionForm.aspx">Admission Form</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs.aspx">Contact</a>
                    </li>
                </ul>

                <div class="school-info ms-lg-3">
                    <div><i class="fas fa-map-marker-alt me-2"></i>MG Road, Pune, Maharashtra, India - 411001</div>
                    <div class="mt-1"><i class="fas fa-phone-alt me-2"></i>+91-9876543210</div>
                </div>
            </div>
        </div>
    </nav>
    <form id="form1" runat="server">
        <!-- Hero Section -->
        <section class="hero-section">
            <div class="hero-content">
                <h1 class="hero-title">Get in Touch</h1>
                <p class="hero-subtitle">We’d love to hear from you! Please fill out the form below.</p>
            </div>


        </section>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">

                    <!-- Contact Form Card -->
                    <div class="form-container">
                        <h3 class="form-title">Contact Us</h3>

                        <!-- Name -->
                        <div class="mb-3">
                            <label class="form-label required">Your Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                                ErrorMessage="Name is required" ForeColor="Red" Display="Dynamic" />
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label required">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" />
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
                                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                                ErrorMessage="Invalid Email Format" ForeColor="Red" Display="Dynamic" />
                        </div>

                        <!-- mobile no.-->

                        <div class="mb-3">
                            <label class="form-label required">Mobile Number</label>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter your mobile no." />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobile"
                                ErrorMessage="Mobile no. is required" ForeColor="Red" Display="Dynamic" />
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtMobile"
                                ValidationExpression="^[6-9]\d{9}$"
                                ErrorMessage="Invalid Mobile no." ForeColor="Red" Display="Dynamic" />
                        </div>
                        <!-- Message -->
                        <div class="mb-3">
                            <label class="form-label required">Message</label>
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"
                                placeholder="Write your message here"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage"
                                ErrorMessage="Message is required" ForeColor="Red" Display="Dynamic" />
                        </div>

                        <!-- Submit Button -->
                        <div class="d-grid">
                            <asp:Button ID="btnSubmit" runat="server"
                                Text="Send Message"
                                CssClass="btn btn-apply btn-lg"
                                OnClick="btnSubmit_Click" />
                        </div>
                    </div>

                    <!-- Google Map -->
                    <div class="card mt-4">
                        <div class="card-header">
                            <h5 class="mb-0">Our Location</h5>
                        </div>
                        <div class="card-body p-0">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3782.034033858616!2d73.84751637496068!3d18.56394428253764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c0f3c70b02bb%3A0xa61a2a9e1e6b108!2sPune%20City!5e0!3m2!1sen!2sin!4v1703839200000"
                                width="100%" height="350" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>


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
