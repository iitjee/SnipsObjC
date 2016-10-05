/*



*/


//0 Cloning (Download feature of Github doesn't work because it doesn't fetch submodules): Use git clone --recursive https://github.com/rs/SDWebImage.git

//1 Running Sample Project: You need to change the scheme to `SDWebImageDemo` @TopLeft of iPhone Simulator dropdown

//2


//3 First of all build `SDWebImageiOS` and `SDWebImage iOS Static` as many times as you want till the project gets run successfully

//4 When you import FLAnimatedImageView files, you may get an error saying `@import FLAnimatedImage;` is not found.
You need to delete the `#if COCOAPODS @import FLAnimatedImage; #else` and `#endif`


