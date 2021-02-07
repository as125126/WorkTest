using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkTest
{
    public partial class Test2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void fieldValEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                fieldValEmail.ErrorMessage = "請輸入Email";
                args.IsValid = false;
            }
            else
            {
                const string pattern = @"^(?!\.)(""([^""\r\\]|\\[""\r\\])*""|" + @"([-a-z0-9!#$%&'*+/=?^_`{|}~]|(?<!\.)\.)*)(?<!\.)" + @"@[a-z0-9][\w\.-]*[a-z0-9]\.[a-z][a-z\.]*[a-z]$";
                var regex = new Regex(pattern, RegexOptions.IgnoreCase);
                if (regex.IsMatch(txtEmail.Text) == false)
                {
                    args.IsValid = false;
                    fieldValEmail.ErrorMessage = "Email格式錯誤";
                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList1.SelectedValue.ToString())
            {
                case "E":
                    txtEmail.Enabled = true;
                    fieldValEmail.Enabled = true;
                    txtFax.Enabled = false;
                    fieldValFax.Enabled = false;
                    break;
                case "F":
                    txtEmail.Enabled = false;
                    fieldValEmail.Enabled = false;
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
                    txtFax.Enabled = false;
                    fieldValFax.Enabled = false;
                    break;
            }
        }
    }
}