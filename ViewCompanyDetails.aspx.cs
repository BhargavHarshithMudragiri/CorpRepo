using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Company_Details : System.Web.UI.Page
{
    DataAccessLayer da = new DataAccessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String qual = ddlqual.SelectedValue;
        da.Getcompdet(qual);
        grvCompDet.Visible = true;
    }
    
    protected void lbRegister_Click(object sender, EventArgs e)
    {
        Session["CompanyName"] = grvCompDet.Rows[0].Cells[0].Text.ToString();
        Session["Department"] = grvCompDet.Rows[0].Cells[1].Text.ToString();
        Response.Redirect("RegisterCandidate.aspx");
    }


    protected void grvCompDet_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CompanyName"] = grvCompDet.Rows[0].Cells[1].Text.ToString();
        Session["Department"] = grvCompDet.Rows[0].Cells[2].Text.ToString();
        Response.Redirect("RegisterCandidate.aspx");
    }
}
