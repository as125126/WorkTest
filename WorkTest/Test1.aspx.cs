using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Email 格式驗證參考
/// https://ithelp.ithome.com.tw/articles/10094951
/// </summary>
namespace WorkTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList1.SelectedValue.ToString())
            {
                case "E":
                    txtEmail.Enabled = true;
                    fieldValEmail.Enabled = true;
                    regexEmailValid.Enabled = true;
                    txtFax.Enabled = false;
                    fieldValFax.Enabled = false;
                    break;
                case "F":
                    txtEmail.Enabled = false;
                    fieldValEmail.Enabled = false;
                    regexEmailValid.Enabled = false;
                    txtFax.Enabled = true;
                    fieldValFax.Enabled = true;
                    break;
                /*case "P":
                    txtEmail.Enabled = false;
                    fieldValEmail.Enabled = false;
                    txtFax.Enabled = false;
                    fieldValFax.Enabled = false;
                    break;*/
                default:
                    txtEmail.Enabled = false;
                    fieldValEmail.Enabled = false;
                    regexEmailValid.Enabled = false;
                    txtFax.Enabled = false;
                    fieldValFax.Enabled = false;
                    break;
            }
        }
    }
}