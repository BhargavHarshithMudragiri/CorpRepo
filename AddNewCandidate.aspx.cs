using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewCandidate : System.Web.UI.Page
{
    DataAccessLayer da=new DataAccessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String name=txtName.Text;
        int age=Convert.ToInt32(txtAge.Text);
        String qual=ddlQualification.SelectedValue;
        int exp=Convert.ToInt32(txtExperience.Text);
        int ret = da.insertCandidate(name, age, qual, exp);
        if (ret > 0)
            Response.Write("<script>alert('insertion successfull')</script>");
        else
            Response.Write("<script>alert('insertion not successfull')</script>");

    }
}
