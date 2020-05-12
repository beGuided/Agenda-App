class sponsorModel{
  final String brandName;
  final String brandWebsite;
  final String brandStory;
  final String brandImage;

   sponsorModel
       ({
     this.brandName,
     this.brandStory,
     this.brandWebsite,
     this.brandImage
});
}


final sponsorModelList = [

  sponsorModel(
    brandName: "BrighterDays CodeLab",
    brandWebsite: "www.brighterdayscodelab.com.ng",
    brandImage: "asset/images/logo.jpg",
    brandStory: "We all know how hard it can be to make a site look like the "
        "demo, so to make your start into the world of X as easy as possible"
        " we have included the demo"

  ),
  sponsorModel(
      brandName: "Campus MarketHub",
      brandWebsite: "www.campusmarkethub.com",
      brandImage: "asset/images/campus.jpg",
      brandStory: "We all know how hard it can be to make a site look like the "
          "demo, so to make your start into the world of X as easy as possible"
          " we have included the demo"

  ),
  sponsorModel(
      brandName: "Youth Council: Ifelodun Chapter",
      brandWebsite: "null",
      brandImage: "asset/images/NYC.jpg",
      brandStory: "We all know how hard it can be to make a site look like the "
          "demo, so to make your start into the world of X as easy as possible"
          " we have included the demo"

  ),

];