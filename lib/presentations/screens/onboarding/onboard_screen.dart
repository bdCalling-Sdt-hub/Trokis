import '../../../core/exports/exports.dart';




class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController();

  var inticatorIndex = 1.obs;

  RxList <Map<String, dynamic>> textList =  [
    {
      'topText' : "Welcome to TROKIS",
    },
    {
      'topText' : "Real-Time Tracking",
    },
  ].obs;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.h),
        child: Obx(()=>
            Column(
              children: [
                SizedBox(height: 132.h),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radiusDefault.r),
                  ),
                  child: Image.asset(
                    "assets/images/onboarding${inticatorIndex.value}.png",
                    width: double.infinity,
                    height: 435.h,
                    fit: BoxFit.cover,

                  ),
                ),

                SizedBox(height: 24.h),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(text: '${textList[inticatorIndex.value-1]['topText']}', fontsize: 18.h,fontWeight: FontWeight.w500, bottom: 8.h),
                  ],
                ),

                SizedBox(height: 24.h),

                Center(
                  child: SizedBox(
                    height: 6.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.w),
                          child: Container(
                            height: 9.h,
                            width: inticatorIndex.value == index+1 ? 15.w : 25.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(inticatorIndex.value == index+1 ? 50.r : 12.r),
                              color: inticatorIndex.value == index+1
                                  ? AppColors.primaryColor
                                  : Colors.black26,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),


                SizedBox(height: 20.h),

                CustomButton(
                    isNetworkNeed: false,
                    onTap: () {
                      if (inticatorIndex.value < 3) {
                        inticatorIndex.value++;
                      } else {
                        // Get.toNamed(AppRoutes.signInScreen);
                      }
                    },
                    text: 'Get Started')

              ],
            ),
        ),
      ),
    );
  }
}

