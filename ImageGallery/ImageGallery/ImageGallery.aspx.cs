using System;
using System.IO;
using System.Web.UI.WebControls;

namespace ImageGallery
{
    public partial class ImageGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetImagesToPanel();
            
        }

        /// <summary>
        /// uploads the images from the local drive and saves it in
        /// a application images folder.
        /// 
        /// </summary>
      
        protected void btnUpLoad_Click(object sender, EventArgs e)
        {
            
            if (fileUpLoad.HasFile)
            {
                fileUpLoad.PostedFile.SaveAs(Server.MapPath("~/Images/" + fileUpLoad.FileName));
            }
           
            Response.Redirect("~/ImageGallery.aspx");
            SetImagesToPanel();
        }



        /// <summary>
        /// Goes through each file in the images folder
        /// Dynamically creates an image button and 
        /// adds to  the given panel control
        /// </summary>
        private void SetImagesToPanel()
        {
            DirectoryInfo dirInfo = new DirectoryInfo(Server.MapPath("~/Images/"));
            FileInfo[] fileInfo = dirInfo.GetFiles();
            foreach (FileInfo file in fileInfo)
            {
                ImageButton imageButton = new ImageButton();
                imageButton.ImageUrl = ("~/Images/" + file.Name);
                imageButton.Width = Unit.Pixel(100);
                imageButton.Height = Unit.Pixel(100);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += ImageButton_Click;
                panelImage.Controls.Add(imageButton);
            }
        }


        /// <summary>
        /// On clicking the images it allows users to view 
        /// the images on the another page in their actual dimentions
        /// </summary>
        
        private void ImageButton_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("~/DisplayImages.aspx?_Pic=" + ((ImageButton)sender).ImageUrl);
        }
    }
}