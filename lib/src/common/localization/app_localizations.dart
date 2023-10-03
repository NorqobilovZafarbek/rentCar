import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
    Locale('uz')
  ];

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello {userName}'**
  String hello(String userName);

  /// No description provided for @companySlogan.
  ///
  /// In en, this message translates to:
  /// **'Our vision is to provide convenience and help increase your sales business.'**
  String get companySlogan;

  /// No description provided for @searchSomethingHere.
  ///
  /// In en, this message translates to:
  /// **'Search something here'**
  String get searchSomethingHere;

  /// No description provided for @advertisementCardTitle1.
  ///
  /// In en, this message translates to:
  /// **'The Best Platform for Car Rental'**
  String get advertisementCardTitle1;

  /// No description provided for @advertisementCardDescr1.
  ///
  /// In en, this message translates to:
  /// **'Ease of doing a car rental safely and reliably. Of course at a low price.'**
  String get advertisementCardDescr1;

  /// No description provided for @advertisementCardTitle2.
  ///
  /// In en, this message translates to:
  /// **'Easy way to rent a car at a low price'**
  String get advertisementCardTitle2;

  /// No description provided for @advertisementCardDescr2.
  ///
  /// In en, this message translates to:
  /// **'Providing cheap car rental services and safe and comfortable facilities.'**
  String get advertisementCardDescr2;

  /// No description provided for @advertisementCardButton.
  ///
  /// In en, this message translates to:
  /// **'Rental Car'**
  String get advertisementCardButton;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @carRent.
  ///
  /// In en, this message translates to:
  /// **'Car Rent'**
  String get carRent;

  /// No description provided for @rentNow.
  ///
  /// In en, this message translates to:
  /// **'Rent Now'**
  String get rentNow;

  /// No description provided for @showMoreCar.
  ///
  /// In en, this message translates to:
  /// **'Show more car'**
  String get showMoreCar;

  /// No description provided for @insight.
  ///
  /// In en, this message translates to:
  /// **'Insight'**
  String get insight;

  /// No description provided for @reimburse.
  ///
  /// In en, this message translates to:
  /// **'Reimburse'**
  String get reimburse;

  /// No description provided for @inbox.
  ///
  /// In en, this message translates to:
  /// **'Inbox'**
  String get inbox;

  /// No description provided for @calender.
  ///
  /// In en, this message translates to:
  /// **'Calender'**
  String get calender;

  /// No description provided for @mainMenu.
  ///
  /// In en, this message translates to:
  /// **'Main Menu'**
  String get mainMenu;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help & Center'**
  String get helpCenter;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logOut;

  /// No description provided for @popularCar.
  ///
  /// In en, this message translates to:
  /// **'Popular Car'**
  String get popularCar;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @howItWorks.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get howItWorks;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'Featured'**
  String get featured;

  /// No description provided for @partnership.
  ///
  /// In en, this message translates to:
  /// **'Partnership'**
  String get partnership;

  /// No description provided for @businessRelation.
  ///
  /// In en, this message translates to:
  /// **'Business Relation'**
  String get businessRelation;

  /// No description provided for @community.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get community;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @podcast.
  ///
  /// In en, this message translates to:
  /// **'Podcast'**
  String get podcast;

  /// No description provided for @inviteAFriend.
  ///
  /// In en, this message translates to:
  /// **'Invite a friend'**
  String get inviteAFriend;

  /// No description provided for @socials.
  ///
  /// In en, this message translates to:
  /// **'Socials'**
  String get socials;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Policy'**
  String get privacyPolicy;

  /// No description provided for @termsCondition.
  ///
  /// In en, this message translates to:
  /// **'Terms & Condition'**
  String get termsCondition;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @capacity.
  ///
  /// In en, this message translates to:
  /// **'Capacity'**
  String get capacity;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @typeCar.
  ///
  /// In en, this message translates to:
  /// **'Type Car'**
  String get typeCar;

  /// No description provided for @steering.
  ///
  /// In en, this message translates to:
  /// **'Steering'**
  String get steering;

  /// No description provided for @gasoline.
  ///
  /// In en, this message translates to:
  /// **'Gasoline'**
  String get gasoline;

  /// No description provided for @billingInfo.
  ///
  /// In en, this message translates to:
  /// **'Billing Info'**
  String get billingInfo;

  /// No description provided for @billingInfoDescr.
  ///
  /// In en, this message translates to:
  /// **'Please enter your billing info'**
  String get billingInfoDescr;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get yourName;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @yourAddress.
  ///
  /// In en, this message translates to:
  /// **'Your address'**
  String get yourAddress;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @townCity.
  ///
  /// In en, this message translates to:
  /// **'Town / City'**
  String get townCity;

  /// No description provided for @townOrCity.
  ///
  /// In en, this message translates to:
  /// **'Town or city'**
  String get townOrCity;

  /// No description provided for @rentalInfo.
  ///
  /// In en, this message translates to:
  /// **'Rental Info'**
  String get rentalInfo;

  /// No description provided for @rentalInfoDescr.
  ///
  /// In en, this message translates to:
  /// **'Please select your rental date'**
  String get rentalInfoDescr;

  /// No description provided for @pickUp.
  ///
  /// In en, this message translates to:
  /// **'Pick - Up'**
  String get pickUp;

  /// No description provided for @dropOff.
  ///
  /// In en, this message translates to:
  /// **'Drop - Off'**
  String get dropOff;

  /// No description provided for @branches.
  ///
  /// In en, this message translates to:
  /// **'Branches'**
  String get branches;

  /// No description provided for @selectYourCity.
  ///
  /// In en, this message translates to:
  /// **'Select your city'**
  String get selectYourCity;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @selectYourDate.
  ///
  /// In en, this message translates to:
  /// **'Select your date'**
  String get selectYourDate;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @selectYourTime.
  ///
  /// In en, this message translates to:
  /// **'Select your time'**
  String get selectYourTime;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @paymentMethodDescr.
  ///
  /// In en, this message translates to:
  /// **'Please enter your payment method'**
  String get paymentMethodDescr;

  /// No description provided for @creditCard.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get creditCard;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @cardHolder.
  ///
  /// In en, this message translates to:
  /// **'Card Holder'**
  String get cardHolder;

  /// No description provided for @expirationDate.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date'**
  String get expirationDate;

  /// No description provided for @ddmmyy.
  ///
  /// In en, this message translates to:
  /// **'DD / MM / YY'**
  String get ddmmyy;

  /// No description provided for @cvc.
  ///
  /// In en, this message translates to:
  /// **'CVC'**
  String get cvc;

  /// No description provided for @payPal.
  ///
  /// In en, this message translates to:
  /// **'PayPal'**
  String get payPal;

  /// No description provided for @bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get bitcoin;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @confirmationDescr.
  ///
  /// In en, this message translates to:
  /// **'We are getting to the end. Just few clicks and your rental is ready!'**
  String get confirmationDescr;

  /// No description provided for @agreement1.
  ///
  /// In en, this message translates to:
  /// **'I agree with sending an Marketing and newsletter emails. No spam, promised!'**
  String get agreement1;

  /// No description provided for @agreement2.
  ///
  /// In en, this message translates to:
  /// **'I agree with our terms and conditions and privacy policy.'**
  String get agreement2;

  /// No description provided for @allYourDataAreSafe.
  ///
  /// In en, this message translates to:
  /// **'All your data are safe'**
  String get allYourDataAreSafe;

  /// No description provided for @allYourDataAreSafeDescr.
  ///
  /// In en, this message translates to:
  /// **'We are using the most advanced security to provide you the best experience ever.'**
  String get allYourDataAreSafeDescr;

  /// No description provided for @rentalSummary.
  ///
  /// In en, this message translates to:
  /// **'Rental Summary'**
  String get rentalSummary;

  /// No description provided for @rentalSummaryDescr.
  ///
  /// In en, this message translates to:
  /// **'Prices may change depending on the length of the rental and the price of your rental car.'**
  String get rentalSummaryDescr;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// No description provided for @applyPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Apply promo code'**
  String get applyPromoCode;

  /// No description provided for @applyNow.
  ///
  /// In en, this message translates to:
  /// **'Apply now'**
  String get applyNow;

  /// No description provided for @detailsRental.
  ///
  /// In en, this message translates to:
  /// **'Details Rental'**
  String get detailsRental;

  /// No description provided for @totalRentalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Rental Price'**
  String get totalRentalPrice;

  /// No description provided for @totalRentalPriceDescr.
  ///
  /// In en, this message translates to:
  /// **'Overall price and includes rental discount'**
  String get totalRentalPriceDescr;

  /// No description provided for @top5CarRental.
  ///
  /// In en, this message translates to:
  /// **'Top 5 Car Rental'**
  String get top5CarRental;

  /// No description provided for @recentTransaction.
  ///
  /// In en, this message translates to:
  /// **'Recent Transaction'**
  String get recentTransaction;

  /// No description provided for @sport.
  ///
  /// In en, this message translates to:
  /// **'Sport'**
  String get sport;

  /// No description provided for @mpv.
  ///
  /// In en, this message translates to:
  /// **'MPV'**
  String get mpv;

  /// No description provided for @sedan.
  ///
  /// In en, this message translates to:
  /// **'Sedan '**
  String get sedan;

  /// No description provided for @coupe.
  ///
  /// In en, this message translates to:
  /// **'Coupe'**
  String get coupe;

  /// No description provided for @hatchback.
  ///
  /// In en, this message translates to:
  /// **'Hatchback'**
  String get hatchback;

  /// No description provided for @step.
  ///
  /// In en, this message translates to:
  /// **'Step {step} of 4'**
  String step(Object step);

  /// No description provided for @reviewers.
  ///
  /// In en, this message translates to:
  /// **'{count}+ Reviewers'**
  String reviewers(Object count);

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'{price} / day'**
  String day(Object price);

  /// No description provided for @nCapacity.
  ///
  /// In en, this message translates to:
  /// **'{count} People'**
  String nCapacity(int count);

  /// No description provided for @moreCapacity.
  ///
  /// In en, this message translates to:
  /// **'{count} or More'**
  String moreCapacity(int count);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
    case 'uz': return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
