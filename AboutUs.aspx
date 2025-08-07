<%@ Page Title="AboutUs" Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Bright_Future_Public_School.AboutUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bright Future Public School - About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <link href="css/style.css" rel="stylesheet" />
    <style>
        /* Counter Styling */
        .counter-section {
            background: var(--light-blue);
            padding: 60px 0;
            text-align: center;
        }

        .counter-box {
            background: white;
            padding: 30px 20px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
            transition: transform 0.3s ease;
        }

            .counter-box:hover {
                transform: translateY(-5px);
            }

        .counter-number {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--primary-color);
        }

        .counter-label {
            font-size: 1.2rem;
            margin-top: 10px;
            font-weight: 500;
        }
    </style>
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
                    <li class="nav-item"><a class="nav-link" href="Home.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="AdmissionForm.aspx">Admission Form</a></li>
                    <li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact</a></li>
                </ul>

                <div class="school-info ms-lg-3">
                    <div><i class="fas fa-map-marker-alt me-2"></i>MG Road, Pune, Maharashtra, India - 411001</div>
                    <div class="mt-1"><i class="fas fa-phone-alt me-2"></i>+91-9876543210</div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h1 class="hero-title">About Our School</h1>
            <p class="hero-subtitle">Nurturing Young Minds Since 1998</p>
        </div>
    </section>

    <!-- About Block -->
    <div class="row align-items-center mb-5">
        <div class="col-lg-6 mb-4">
            <img src="img/SchoolImg.jpg" class="img-fluid rounded shadow" alt="School Building">
        </div>
        <div class="col-lg-6">
            <h2 class="section-title text-start">Who We Are</h2>
            <p>
                Bright Future School, established in 1998, is committed to providing holistic education 
                that empowers students with knowledge, values, and life skills.
            </p>
            <p>
                Our campus is equipped with modern classrooms, well-stocked libraries, state-of-the-art 
                science and computer laboratories, playgrounds, and dedicated spaces for art, music, and sports. 
                We believe that learning extends beyond textbooks, so we focus on co-curricular and extra-curricular 
                activities to ensure the all-round development of every student.
            </p>
            <p>
                We take pride in our dedicated teaching faculty who not only teach but also mentor students, 
                encouraging them to think creatively, question fearlessly, and build confidence. 
                Many of our alumni have gone on to achieve success in diverse fields like engineering, medicine, 
                business, arts, and public service.
            </p>

            <p>
                <strong>Established:</strong> 1998<br />
                <strong>Address:</strong> Bright Future School, FC Road, Pune, Maharashtra<br />
                <strong>Affiliation:</strong> CBSE
            </p>
        </div>
    </div>

    <!-- Facilities Cards -->
    <div class="mb-4">
        <h2 class="section-title">Our Facilities</h2>
        <div class="row">
            <!-- Library -->
            <div class="col-md-3 mb-4">
                <div class="card feature-card text-center">
                    <img src="img/library.jpg" class="card-img-top" alt="Library">
                    <div class="feature-content p-3">
                        <div class="feature-icon"><i class="fas fa-book"></i></div>
                        <h5 class="mb-2 mt-2">Library</h5>
                        <p>A vast collection of books, journals, and digital resources for knowledge seekers.</p>
                    </div>
                </div>
            </div>

            <!-- Modern Labs -->
            <div class="col-md-3 mb-4">
                <div class="card feature-card text-center">
                    <img src="img/laboratory.jpg" class="card-img-top" alt="Modern Labs">
                    <div class="feature-content p-3">
                        <div class="feature-icon"><i class="fas fa-flask"></i></div>
                        <h5 class="mb-2 mt-2">Modern Labs</h5>
                        <p>Advanced Science and Computer Labs that encourage innovation and practical learning.</p>
                    </div>
                </div>
            </div>

            <!-- Sports -->
            <div class="col-md-3 mb-4">
                <div class="card feature-card text-center">
                    <img src="img/SPORT.jpg" class="card-img-top" alt="Sports">
                    <div class="feature-content p-3">
                        <div class="feature-icon"><i class="fas fa-football-ball"></i></div>
                        <h5 class="mb-2 mt-2">Sports</h5>
                        <p>Dedicated grounds and expert coaches to promote physical fitness and teamwork.</p>
                    </div>
                </div>
            </div>

            <!-- Arts & Culture -->
            <div class="col-md-3 mb-4">
                <div class="card feature-card text-center">
                    <img src="img/arts.jpg" class="card-img-top" alt="Arts & Culture">
                    <div class="feature-content p-3">
                        <div class="feature-icon"><i class="fas fa-paint-brush"></i></div>
                        <h5 class="mb-2 mt-2">Arts & Culture</h5>
                        <p>Art, music, and cultural programs to encourage creativity and expression.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Team Section -->
    <div>
        <h2 class="section-title">Our Team</h2>
        <div class="row">
            <div class="col-md-4 mb-2">
                <div class="card feature-card text-center">
                    <div class="feature-content">
                        <h5 class="mb-2">Principal</h5>
                        <p>Mr. Rajesh Sharma</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-2">
                <div class="card feature-card text-center">
                    <div class="feature-content">
                        <h5 class="mb-2">Vice Principal</h5>
                        <p>Mrs. Neeta Kapoor</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-2">
                <div class="card feature-card text-center">
                    <div class="feature-content">
                        <h5 class="mb-2">Head of Science Dept.</h5>
                        <p>Dr. Anil Patil</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-2">
                <div class="card feature-card text-center">
                    <div class="feature-content">
                        <h5 class="mb-2">Head of Mathematics</h5>
                        <p>Mrs. Sunita Joshi</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-2">
                <div class="card feature-card text-center">
                    <div class="feature-content">
                        <h5 class="mb-2">Sports Coach</h5>
                        <p>Mr. Amit Deshmukh</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-2">
                <div class="card feature-card text-center">
                    <div class="feature-content">
                        <h5 class="mb-2">Head og History,Economics,Geography</h5>
                        <p>Mr. Amit Deshmukh</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Animated Counters -->
    <section class="counter-section">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="counter-box">
                        <div class="counter-number" data-target="250">0</div>
                        <div class="counter-label">Students</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter-box">
                        <div class="counter-number" data-target="25">0</div>
                        <div class="counter-label">Teachers</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter-box">
                        <div class="counter-number" data-target="20">0</div>
                        <div class="counter-label">Awards</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Gallery Section -->
    <section class="form-section" id="Gallery">
        <div class="container py-5">
            <h2 class="section-title">Photo Gallery</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card feature-card">
                        <img src="img/G1.jpg" class="card-img-top feature-img" alt="Gallery Image 1">
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card feature-card">
                        <img src="img/G3.jpg" class="card-img-top feature-img" alt="Gallery Image 2">
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card feature-card">
                        <img src="img/G6.jpeg" class="card-img-top feature-img" alt="Gallery Image 3">
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card feature-card">
                        <img src="img/G4.jpg" class="card-img-top feature-img" alt="Gallery Image 4">
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card feature-card">
                        <img src="img/G5.jpg" class="card-img-top feature-img" alt="Gallery Image 5">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer" id="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-5">
                    <h4 class="footer-title">Bright Future Public School</h4>
                    <p>Established in 1998, we are committed to providing quality education with modern teaching methodologies and holistic development of students.</p>
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
                        <div class="contact-icon"><i class="fas fa-map-marker-alt"></i></div>
                        <div>MG Road, Pune, Maharashtra, India - 411001</div>
                    </div>
                    <div class="contact-info">
                        <div class="contact-icon"><i class="fas fa-phone-alt"></i></div>
                        <div>+91-9876543210</div>
                    </div>
                    <div class="contact-info">
                        <div class="contact-icon"><i class="fas fa-envelope"></i></div>
                        <div>admissions@brightfuturepune.edu.in</div>
                    </div>
                    <div class="contact-info">
                        <div class="contact-icon"><i class="fas fa-clock"></i></div>
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

    <script>
        // Counter Animation Script
        const counters = document.querySelectorAll('.counter-number');
        const speed = 200; // lower = faster
        const animateCounters = () => {
            counters.forEach(counter => {
                const updateCount = () => {
                    const target = +counter.getAttribute('data-target');
                    const count = +counter.innerText;
                    const increment = target / speed;
                    if (count < target) {
                        counter.innerText = Math.ceil(count + increment);
                        setTimeout(updateCount, 20);
                    } else {
                        counter.innerText = target;
                    }
                };
                updateCount();
            });
        };
        let started = false;
        window.addEventListener('scroll', () => {
            const section = document.querySelector('.counter-section');
            const sectionTop = section.offsetTop - window.innerHeight + 100;
            if (!started && window.scrollY > sectionTop) {
                animateCounters();
                started = true;
            }
        });
    </script>

</body>
</html>
