<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RazorPaycheckout.aspx.cs" Inherits="Bright_Future_Public_School.RazorPaycheckout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure Admission Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            padding: 20px 0;
        }



        .payment-container {
            max-width: 800px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            overflow: hidden;
        }



        .payment-header {
            background: linear-gradient(90deg, #4b6cb7 0%, #182848 100%);
            color: white;
            padding: 25px 30px;
        }



        .payment-body {
            padding: 30px;
        }



        .school-logo {
            width: 80px;
            height: 80px;
            background: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }



            .school-logo i {
                font-size: 40px;
                color: #4b6cb7;
            }



        .payment-details {
            background: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 25px;
        }



        .spinner-container {
            padding: 30px 0;
            text-align: center;
        }



        .spinner-border {
            width: 4rem;
            height: 4rem;
            border-width: 0.3em;
            color: #4b6cb7;
        }



        .secure-badge {
            background: #e3f2fd;
            color: #1976d2;
            padding: 8px 15px;
            border-radius: 30px;
            font-weight: 500;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }



        .payment-info-item {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }



            .payment-info-item:last-child {
                border-bottom: none;
                font-weight: 600;
                font-size: 1.1rem;
            }



        .razorpay-logo {
            max-width: 180px;
            margin: 20px auto;
            display: block;
        }



        .footer-note {
            background: #f1f8e9;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            margin-top: 20px;
            font-size: 0.9rem;
            color: #33691e;
        }



        .btn-razorpay {
            background: #4361ee;
            color: white;
            border: none;
            padding: 12px 25px;
            font-weight: 600;
            border-radius: 8px;
            transition: all 0.3s;
        }



            .btn-razorpay:hover {
                background: #3a56d4;
                transform: translateY(-2px);
                box-shadow: 0 4px 10px rgba(67, 97, 238, 0.3);
            }
    </style>

</head>

<body>

    <div class="container">

        <div class="payment-container mx-auto">

            <div class="payment-header text-center">

                <div class="school-logo">

                    <i class="fas fa-graduation-cap"></i>

                </div>

                <h1 class="h3 mb-1">Bright Future Public School</h1>

                <p class="mb-0">Admission Fee Payment</p>

            </div>



            <div class="payment-body">

                <div class="text-center mb-4">

                    <h3 class="fw-bold">Complete Your Admission</h3>

                    <p class="text-muted">Secure payment processed through Razorpay</p>

                    <div class="secure-badge">

                        <i class="fas fa-lock"></i>

                        <span>100% Secure Payment</span>

                    </div>

                </div>



                <div class="payment-details">

                    <h5 class="mb-3 fw-bold">Payment Summary</h5>

                    <div class="payment-info-item">

                        <span>Student Name:</span>

                        <span><%=child_name%></span>

                    </div>

                    <div class="payment-info-item">

                        <span>Admission For:</span>

                        <span>Class <%=child_class %></span>

                    </div>

                    <div class="payment-info-item">

                        <span>Father's Name:</span>

                        <span><%=father_name%></span>

                    </div>

                    <div class="payment-info-item">

                        <span>Contact:</span>

                        <span><%=father_contact%></span>

                    </div>

                    <div class="payment-info-item">

                        <span>Email:</span>

                        <span><%=father_email%></span>

                    </div>

                    <div class="payment-info-item">

                        <span>Total Amount:</span>

                        <span><%=fees%></span>

                    </div>

                </div>



                <div class="spinner-container">

                    <div class="spinner-border" role="status">

                        <span class="visually-hidden">Loading...</span>

                    </div>

                    <h4 class="mt-4 mb-3">Redirecting to secure payment...</h4>

                    <p class="text-muted">Please wait while we connect you to our payment gateway</p>

                </div>



                <img src="https://razorpay.com/assets/razorpay-glyph.svg" alt="Razorpay" class="razorpay-logo">



                <form action="RazorPaycheckout.aspx" method="post" id="payment-form">

                    <script
                        src="https://checkout.razorpay.com/v1/checkout.js"
                        data-key="rzp_test_IHjTjkag3VIxUb"
                        data-amount="<%=fees%>"
                        data-currency="INR"
                        data-order_id="<%=OrderId %>"
                        data-image="https://razorpay.com/favicon.png"
                        data-buttontext="Pay with Razorpay"
                        data-prefill.name="<%=child_name%>"
                        data-prefill.name="<%=father_name%>"
                        data-prefill.email="<%= father_email %>"
                        data-prefill.contact="<%=father_contact%>"
                        data-notes.class="<%=child_class %>"
                        data-theme.color="#4361ee">

                    </script>

                </form>



                <div class="footer-note">

                    <i class="fas fa-info-circle me-2"></i>

                    Your payment is securely encrypted. We do not store your payment details.

                </div>

            </div>

        </div>

    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>

        // Auto - trigger the Razorpay payment button on page load

         document.addEventListener('DOMContentLoaded', function () {

             // Hide the Razorpay button

             const razorpayButton = document.querySelector('.razorpay-payment-button');

             if (razorpayButton) {

                 razorpayButton.style.display = 'none';



                 // Simulate a small delay to show processing before opening payment modal

                 setTimeout(() => {

                     razorpayButton.click();

                 }, 2000);

             }

         });

    </script >

</body>



</html>






