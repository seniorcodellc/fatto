mixin PngImages {
  static String pngPath = "assets/images/";

  String logo = "${pngPath}logo.png";
  // onboarding Screen Images
  String onboarding1 = "${pngPath}onboardingScreens/onboarding1.png";
  String onboarding2 = "${pngPath}onboardingScreens/onboarding2.png";
  String onboarding3 = "${pngPath}onboardingScreens/onboarding3.png";

  //account Screen
  String accountPhoto = "${pngPath}accountPhoto.png";

  //Home Screen
  //................ cover area..................................
  String cover = "${pngPath}homeScreen/cover.png";

  //................Discount area..................................

  String decorations = "${pngPath}homeScreen/discount/decorations.png";
  String crochet = "${pngPath}homeScreen/discount/crochet.png";
  String wood = "${pngPath}homeScreen/discount/wood.png";
  String bags = "${pngPath}homeScreen/discount/bags.png";

  //................Promotion area..................................

  String promotionBackGround1 = "assets/images/homeScreen/promotion/Rectangle1.png";
  String promotionFashion = "assets/images/homeScreen/promotion/1.png";

  String promotionBackGround2 = "assets/images/homeScreen/promotion/Rectangle2.png";

  String promotionBackGround3 = "assets/images/homeScreen/promotion/Rectangle3.png";
  String promotionMakeup = "assets/images/homeScreen/promotion/2.png";

  String hand1 = "assets/images/homeScreen/promotion/hand1.png";
  String hand2 = "assets/images/homeScreen/promotion/hand2.png";
  String hand3 = "assets/images/homeScreen/promotion/hand3.png";
  String hand4 = "assets/images/homeScreen/promotion/hand4.png";

  String promotionBackGround4 = "assets/images/homeScreen/promotion/Rectangle4.png";

  String promotionBackGround5 = "assets/images/homeScreen/promotion/Rectangle5.png";
  String promotionShoes = "assets/images/homeScreen/promotion/3.png";

  //................Bags area..................................

  String pinkBag = "assets/images/homeScreen/categories/bags/pinkBag.png";
  String brownCandy = "assets/images/homeScreen/categories/bags/brownCandy.png";
  String offwhite = "assets/images/homeScreen/categories/bags/offwhite.png";

  //................clothes area..................................

  String shawl = "assets/images/homeScreen/categories/clothes/shawl.png";
  String cardigan = "assets/images/homeScreen/categories/clothes/cardigan.png";
  String blouse = "assets/images/homeScreen/categories/clothes/blouse.png";

  //----------------------antiques area -------------------------------
  String resin = "assets/images/homeScreen/categories/antiques/resin.png";
  String pottery = "assets/images/homeScreen/categories/antiques/pottery.png";
  String potteryClay = "assets/images/homeScreen/categories/antiques/potteryClay.png";

  //----------------------wedding area -------------------------------
  String cards = "assets/images/homeScreen/categories/wedding/cards.png";
  String cakes = "assets/images/homeScreen/categories/wedding/cakes.png";
  String eventOrganizing = "assets/images/homeScreen/categories/wedding/eventOrganizing.png";

  //----------------------Software area -------------------------------

  String webDesign = "assets/images/homeScreen/categories/sw/webDesign.png";
  String development = "assets/images/homeScreen/categories/sw/development.png";
  String graphicDesign = "assets/images/homeScreen/categories/sw/graphicDesign.png";

  // reviews Screen Images
  String reviewer = "assets/images/homeScreen/feedback.png";

  // cart Screen Images
  String item1 = "assets/images/homeScreen/cart/1.png";
  String item2 = "assets/images/homeScreen/cart/2.png";
  String item3 = "assets/images/homeScreen/cart/3.png";
  String item4 = "assets/images/homeScreen/cart/4.png";
  String empty = "assets/images/homeScreen/cart/Vector.png";
  String arrow = "assets/icons/arrow.png";

  // favorite Screen Images
  String add = "assets/icons/add.png";
  String favItem1 = "assets/images/homeScreen/categories/clothes/shawl.png";
  String bookmark = "assets/icons/bookmark.png";
  String calender = "assets/icons/calender.png";
  String copy = "assets/icons/copy.png";
  String cart = "assets/icons/cart.png";
  String deleteBin = "assets/icons/delete_bin.png";
  String eye = "assets/icons/eye.png";
  String facebook = "assets/icons/facebook.png";
  String google = "assets/icons/google.png";
  String historyLine = "assets/icons/history_line.png";
  String leftIcon = "assets/icons/left_icon.png";
  String lockLcon = "assets/icons/lock_icon.png";
  String mailIcon = "assets/icons/mail_icon.png";
  String moreSquare = "assets/icons/more_square.png";
  String rightIcon = "assets/icons/right_icon.png";
  String profile = "assets/icons/profile.png";
  String userIcon = "assets/icons/user_icon.png";
  String store = "assets/icons/store.png";
  String share = "assets/icons/share.png";
}

mixin SvgImages {
  static String svgPath = "assets/icons/";
  String search = "${svgPath}search.svg";
  String address = "${svgPath}address.svg";
  String bagFill = "${svgPath}bag_fill.svg";
  String building = "${svgPath}building.svg";
  String cameraFill = "${svgPath}camera_fill.svg";

  String clock = "${svgPath}clock.svg";

  String delete = "${svgPath}delete.svg";
  String edit = "${svgPath}edit.svg";
  String eyeOff = "assets/icons/eye_off.svg";
  String flash = "assets/icons/flash.svg";
  String heart = "assets/icons/heart.svg";
  String image = "assets/icons/image.svg";
  String location = "assets/icons/location.svg";
  String lock = "assets/icons/lock.svg";
  String logout = "assets/icons/logout.svg";
  String moreCircle = "assets/icons/more_circle.svg";
  String priceTag = "assets/icons/price_tag.svg";
  String qrScan = "assets/icons/qr_scan.svg";
  String settings = "assets/icons/settings.svg";
  String shieldCheck = "assets/icons/shield_check.svg";
  String shieldDone = "assets/icons/shield_done.svg";
  String user = "assets/icons/user.svg";
  String walletLine = "assets/icons/wallet_line.svg";
}

class AppAssets with PngImages, SvgImages {}
