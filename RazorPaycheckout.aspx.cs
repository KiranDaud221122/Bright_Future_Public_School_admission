// RazorPaycheckout.aspx.cs (codebehind for payment page)
using System;
using System.Web.UI;
using Razorpay.Api;
using System.Net;
using System.Collections.Generic;

namespace Bright_Future_Public_School
{
    public partial class RazorPaycheckout : System.Web.UI.Page
    {
        public string fees;
        public string father_name;
        public string child_name;
        public string father_email;
        public string father_contact;
        public string child_class;
        public string OrderId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                father_name = Request.QueryString["father_name"];
                child_name = Request.QueryString["child_name"];
                father_email = Request.QueryString["father_email"];
                father_contact = Request.QueryString["father_contact"];
                child_class = Request.QueryString["child_class"];
                fees = Request.QueryString["fees"];

                // Save in session for receipt
                Session["child_name"] = child_name;
                Session["father_name"] = father_name;
                Session["father_email"] = father_email;
                Session["father_contact"] = father_contact;
                Session["child_class"] = child_class;
                Session["fees"] = fees;

                fees = fees?.Trim().Replace(",", "").Replace("₹", "");
                Dictionary<string, object> input = new Dictionary<string, object>();

                if (!string.IsNullOrEmpty(fees) && Decimal.TryParse(fees, out decimal feeDecimal))
                {
                    int amountInPaise = Convert.ToInt32(feeDecimal * 100);
                    input.Add("amount", amountInPaise);
                }
                else
                {
                    Response.Write("Invalid or missing fee amount: " + fees);
                    return;
                }

                input.Add("currency", "INR");
                input.Add("payment_capture", 1);

                string key = "rzp_test_IHjTjkag3VIxUb";
                string secret = "LXuXJFS72EjIQOPLFHzRoVBe";
                RazorpayClient client = new RazorpayClient(key, secret);

                try
                {
                    Razorpay.Api.Order order = client.Order.Create(input);
                    OrderId = order["id"].ToString();
                }
                catch (Exception ex)
                {
                    Response.Write("Error creating order: " + ex.Message);
                }
            }
        }
    }
}
