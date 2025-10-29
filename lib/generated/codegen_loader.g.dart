// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ru = {
  "app_name": "Мониторинг водохранилища",
  "hello": "Здравствуйте",
  "login": "Войти",
  "logout": "Выйти",
  "username": "Имя пользователя",
  "password": "Пароль",
  "email": "Электронная почта",
  "phone": "Номер телефона",
  "language": {
    "select_language": "Выберите язык",
    "choose_language": "Выберите ваш язык",
    "language_selected": "язык выбран",
    "continue": "Продолжить"
  },
  "welcome": {
    "title": "Добро пожаловать в ReservoSense",
    "subtitle": "Умное и простое управление водохранилищем",
    "description": "Эффективный мониторинг водных ресурсов с современными технологиями",
    "sign_in": "Войти",
    "sign_up": "Регистрация",
    "already_have_account": "Уже есть аккаунт?",
    "dont_have_account": "Нет аккаунта?",
    "sign_up_info_title": "Информация о регистрации",
    "sign_up_info_1": "Для использования приложения вам необходимо связаться с отделом связи ООО 'Smart Solutions System', чтобы получить свои логин и пароль.\n\n",
    "sign_up_info_2": "Для получения дополнительной информации:\n\n",
    "sign_up_info_3": "- Телефон: +998 99 834 11 93\n",
    "sign_up_info_4": "- Электронная почта: sss.ird@mail.ru\n",
    "sign_up_info_5": "- Telegram: @dilshodjon216",
    "sign_up_button_ok": "Понятно"
  },
  "buttons": {
    "save": "Сохранить",
    "cancel": "Отмена",
    "delete": "Удалить",
    "edit": "Редактировать",
    "add": "Добавить",
    "search": "Поиск",
    "filter": "Фильтр",
    "submit": "Отправить",
    "confirm": "Подтвердить"
  },
  "messages": {
    "success": "Успешно выполнено",
    "error": "Произошла ошибка",
    "loading": "Загрузка...",
    "no_data": "Данные не найдены",
    "no_internet": "Нет подключения к интернету"
  },
  "validation": {
    "required": "Это поле обязательно",
    "invalid_email": "Неверный формат email",
    "invalid_phone": "Неверный номер телефона",
    "min_length": "Должно быть не менее {0} символов",
    "max_length": "Должно быть не более {0} символов"
  },
  "home": {
    "latest_data": "Последние данные",
    "station_info": "Информация о станции",
    "map": "Карта",
    "statistics": "Статистика",
    "settings": "Настройки",
    "loading": "Загрузка данных...",
    "no_data_found": "Данные не найдены",
    "no_data_available": "Нет данных",
    "retry": "Повторить",
    "water_level": "Уровень воды:",
    "water_flow": "Расход воды:",
    "time": "Время:",
    "error_occurred": "Произошла ошибка",
    "fresh_data": "Свежие данные",
    "week_old": "1 неделя",
    "stale_data": "Устаревшие данные",
    "stations_statistics": "Статистика станций",
    "total_stations": "Всего станций",
    "working_stations": "Работающие станции",
    "not_working_stations": "Неработающие станции",
    "close": "Закрыть"
  },
  "station_data": {
    "tabs": {
      "hourly": "ПОЧАСОВОЙ",
      "yesterday": "ВЧЕРАШНИЙ",
      "monthly": "МЕСЯЧНЫЙ",
      "yearly": "ГОДОВОЙ",
      "custom": "ВЫБРАННОЕ ВРЕМЯ"
    },
    "titles": {
      "today_data": "Данные сегодня",
      "yesterday_data": "Данные вчера",
      "monthly_data": "ежедневные данные",
      "yearly_data": "ежемесячные данные",
      "custom_data": "Выбранный временной диапазон"
    },
    "labels": {
      "water_level": "Уровень воды:",
      "water_volume": "Объем воды:",
      "correction": "Коррекция:",
      "start_date": "Начальная дата",
      "end_date": "Конечная дата",
      "select": "Выбрать",
      "view_data": "Показать данные",
      "clear": "Очистить",
      "from": "с",
      "to": "по"
    },
    "messages": {
      "loading": "Загрузка данных...",
      "no_data": "Данные не найдены",
      "no_data_desc": "Нет данных за выбранный период",
      "error": "Произошла ошибка",
      "retry": "Повторить",
      "reload": "Перезагрузить",
      "select_range": "Выберите диапазон дат",
      "select_range_desc": "Выберите начальную и конечную даты выше для просмотра данных"
    },
    "months": {
      "january": "Январь",
      "february": "Февраль",
      "march": "Март",
      "april": "Апрель",
      "may": "Май",
      "june": "Июнь",
      "july": "Июль",
      "august": "Август",
      "september": "Сентябрь",
      "october": "Октябрь",
      "november": "Ноябрь",
      "december": "Декабрь"
    }
  },
  "station_info": {
    "title": "Информация о станции",
    "status": {
      "active": "Активна",
      "inactive": "Неактивна",
      "defective": "Неисправна"
    },
    "sections": {
      "basic_info": "Основная информация",
      "contact_info": "Контактная информация",
      "location": "Местоположение",
      "data_transmission": "Передача данных",
      "technical_info": "Техническая информация",
      "integration": "Интеграция",
      "last_measurement": "Последнее измерение"
    },
    "labels": {
      "id": "ID",
      "imel": "IMEL",
      "created_date": "Дата создания",
      "updated_date": "Дата обновления",
      "user_phone": "Номер пользователя",
      "device_phone": "Номер устройства",
      "coordinates": "Координаты",
      "send_data_time": "Время отправки данных",
      "send_info_time": "Время отправки информации",
      "program_version": "Версия программы",
      "temperature": "Температура",
      "battery": "Батарея",
      "signal": "Сигнал",
      "integration_status": "Статус интеграции",
      "integration_date": "Дата интеграции",
      "water_level": "Уровень воды",
      "water_volume": "Объем воды",
      "correction": "Коррекция",
      "measurement_time": "Время измерения"
    },
    "placeholders": {
      "not_entered": "Не введено",
      "not_set": "Не установлено",
      "unknown": "Неизвестно",
      "connected": "Подключено"
    }
  }
};
static const Map<String,dynamic> _az = {
  "app_name": "Su Anbarı Monitorinqi",
  "hello": "Salam",
  "welcome": "Xoş gəlmisiniz",
  "login": "Daxil ol",
  "logout": "Çıxış",
  "username": "İstifadəçi adı",
  "password": "Şifrə",
  "email": "Elektron poçt",
  "phone": "Telefon nömrəsi",
  "buttons": {
    "save": "Saxla",
    "cancel": "Ləğv et",
    "delete": "Sil",
    "edit": "Redaktə et",
    "add": "Əlavə et",
    "search": "Axtar",
    "filter": "Filtr",
    "submit": "Göndər",
    "confirm": "Təsdiq et"
  },
  "messages": {
    "success": "Uğurla yerinə yetirildi",
    "error": "Xəta baş verdi",
    "loading": "Yüklənir...",
    "no_data": "Məlumat tapılmadı",
    "no_internet": "İnternet bağlantısı yoxdur"
  },
  "validation": {
    "required": "Bu sahə mütləqdir",
    "invalid_email": "Email formatı səhvdir",
    "invalid_phone": "Telefon nömrəsi səhvdir",
    "min_length": "Ən azı {0} simvol olmalıdır",
    "max_length": "Ən çox {0} simvol olmalıdır"
  },
  "home": {
    "latest_data": "Son məlumatlar",
    "station_info": "Stansiya məlumatları",
    "map": "Xəritə",
    "statistics": "Statistika",
    "settings": "Parametrlər",
    "loading": "Məlumatlar yüklənir...",
    "no_data_found": "Məlumat tapılmadı",
    "no_data_available": "Məlumat yoxdur",
    "retry": "Yenidən cəhd et",
    "water_level": "Su səviyyəsi:",
    "water_flow": "Su sərfi:",
    "time": "Vaxt:",
    "error_occurred": "Xəta baş verdi",
    "fresh_data": "Təzə məlumat",
    "week_old": "1 həftəlik",
    "stale_data": "Köhnə məlumat",
    "stations_statistics": "Stansiyaların statistikası",
    "total_stations": "Ümumi stansiyalar",
    "working_stations": "İşləyən stansiyalar",
    "not_working_stations": "İşləməyən stansiyalar",
    "close": "Bağla"
  },
  "station_data": {
    "tabs": {
      "hourly": "SAATLIK",
      "yesterday": "DÜNƏNKİ",
      "monthly": "AYLIK",
      "yearly": "İLLİK",
      "custom": "SEÇİLMİŞ VAXT"
    },
    "titles": {
      "today_data": "Bugünkü məlumatlar",
      "yesterday_data": "Dünənki məlumatlar",
      "monthly_data": "günlük məlumatlar",
      "yearly_data": "aylıq məlumatlar",
      "custom_data": "Seçilmiş vaxt aralığı"
    },
    "labels": {
      "water_level": "Su səviyyəsi:",
      "water_volume": "Su həcmi:",
      "correction": "Düzəliş:",
      "start_date": "Başlanğıc",
      "end_date": "Son",
      "select": "Seç",
      "view_data": "Məlumatları göstər",
      "clear": "Təmizlə",
      "from": "dan",
      "to": "dək"
    },
    "messages": {
      "loading": "Məlumatlar yüklənir...",
      "no_data": "Məlumat tapılmadı",
      "no_data_desc": "Seçilmiş tarix aralığında məlumat yoxdur",
      "error": "Xəta baş verdi",
      "retry": "Yenidən cəhd et",
      "reload": "Yenidən yüklə",
      "select_range": "Tarix aralığını seçin",
      "select_range_desc": "Yuxarıda başlanğıc və son tarixləri seçərək məlumatları görün"
    },
    "months": {
      "january": "Yanvar",
      "february": "Fevral",
      "march": "Mart",
      "april": "Aprel",
      "may": "May",
      "june": "İyun",
      "july": "İyul",
      "august": "Avqust",
      "september": "Sentyabr",
      "october": "Oktyabr",
      "november": "Noyabr",
      "december": "Dekabr"
    }
  },
  "station_info": {
    "title": "Stansiya məlumatları",
    "status": {
      "active": "Aktiv",
      "inactive": "Aktiv deyil",
      "defective": "Nasaz"
    },
    "sections": {
      "basic_info": "Əsas məlumatlar",
      "contact_info": "Əlaqə məlumatları",
      "location": "Yerləşmə",
      "data_transmission": "Məlumat göndərmə",
      "technical_info": "Texniki məlumatlar",
      "integration": "İnteqrasiya",
      "last_measurement": "Son ölçmə"
    },
    "labels": {
      "id": "ID",
      "imel": "IMEL",
      "created_date": "Yaradılma tarixi",
      "updated_date": "Yenilənmə tarixi",
      "user_phone": "İstifadəçi nömrəsi",
      "device_phone": "Cihaz nömrəsi",
      "coordinates": "Koordinatlar",
      "send_data_time": "Data göndərmə vaxtı",
      "send_info_time": "Info göndərmə vaxtı",
      "program_version": "Proqram versiyası",
      "temperature": "Temperatura",
      "battery": "Batareya",
      "signal": "Siqnal",
      "integration_status": "İnteqrasiya statusu",
      "integration_date": "İnteqrasiya tarixi",
      "water_level": "Su səviyyəsi",
      "water_volume": "Su həcmi",
      "correction": "Düzəliş",
      "measurement_time": "Ölçmə vaxtı"
    },
    "placeholders": {
      "not_entered": "Daxil edilməyib",
      "not_set": "Təyin edilməyib",
      "unknown": "Naməlum",
      "connected": "Bağlı"
    }
  }
};
static const Map<String,dynamic> _en = {
  "app_name": "Water Storage Monitoring",
  "hello": "Hello",
  "login": "Login",
  "logout": "Logout",
  "username": "Username",
  "password": "Password",
  "email": "Email",
  "phone": "Phone number",
  "language": {
    "select_language": "Select Language",
    "choose_language": "Choose your language",
    "language_selected": "language selected",
    "continue": "Continue"
  },
  "welcome": {
    "title": "Welcome to ReservoSense",
    "subtitle": "Smart & Easy Water Storage Management",
    "description": "Monitor water resources efficiently with modern technology",
    "sign_in": "Sign In",
    "sign_up": "Sign Up",
    "already_have_account": "Already have an account?",
    "dont_have_account": "Don't have an account?",
    "sign_up_info_title": "Registration Information",
    "sign_up_info_1": "To use the application, you need to contact the communication department of 'Smart Solutions System' LLC to obtain your login and password.\n\n",
    "sign_up_info_2": "For more information:\n\n",
    "sign_up_info_3": "- Phone: +998 99 834 11 93\n",
    "sign_up_info_4": "- Email: sss.ird@mail.ru\n",
    "sign_up_info_5": "- Telegram: @dilshodjon216",
    "sign_up_button_ok": "Understood"
  },
  "buttons": {
    "save": "Save",
    "cancel": "Cancel",
    "delete": "Delete",
    "edit": "Edit",
    "add": "Add",
    "search": "Search",
    "filter": "Filter",
    "submit": "Submit",
    "confirm": "Confirm"
  },
  "messages": {
    "success": "Success",
    "error": "Error occurred",
    "loading": "Loading...",
    "no_data": "No data found",
    "no_internet": "No internet connection"
  },
  "validation": {
    "required": "This field is required",
    "invalid_email": "Invalid email format",
    "invalid_phone": "Invalid phone number",
    "min_length": "Must be at least {0} characters",
    "max_length": "Must be at most {0} characters"
  },
  "home": {
    "latest_data": "Latest Data",
    "station_info": "Station Information",
    "map": "Map",
    "statistics": "Statistics",
    "settings": "Settings",
    "loading": "Loading data...",
    "no_data_found": "No data found",
    "no_data_available": "No data available",
    "retry": "Retry",
    "water_level": "Water Level:",
    "water_flow": "Water Flow:",
    "time": "Time:",
    "error_occurred": "Error occurred",
    "fresh_data": "Fresh data",
    "week_old": "1 week old",
    "stale_data": "Stale data",
    "stations_statistics": "Stations Statistics",
    "total_stations": "Total Stations",
    "working_stations": "Working Stations",
    "not_working_stations": "Not Working Stations",
    "close": "Close"
  },
  "station_data": {
    "tabs": {
      "hourly": "HOURLY",
      "yesterday": "YESTERDAY",
      "monthly": "MONTHLY",
      "yearly": "YEARLY",
      "custom": "CUSTOM TIME"
    },
    "titles": {
      "today_data": "Today's Data",
      "yesterday_data": "Yesterday's Data",
      "monthly_data": "daily data",
      "yearly_data": "monthly data",
      "custom_data": "Custom Time Range"
    },
    "labels": {
      "water_level": "Water Level:",
      "water_volume": "Water Volume:",
      "correction": "Correction:",
      "start_date": "Start Date",
      "end_date": "End Date",
      "select": "Select",
      "view_data": "View Data",
      "clear": "Clear",
      "from": "from",
      "to": "to"
    },
    "messages": {
      "loading": "Loading data...",
      "no_data": "No data found",
      "no_data_desc": "No data available for the selected date range",
      "error": "Error occurred",
      "retry": "Retry",
      "reload": "Reload",
      "select_range": "Select date range",
      "select_range_desc": "Select start and end dates above to view data"
    },
    "months": {
      "january": "January",
      "february": "February",
      "march": "March",
      "april": "April",
      "may": "May",
      "june": "June",
      "july": "July",
      "august": "August",
      "september": "September",
      "october": "October",
      "november": "November",
      "december": "December"
    }
  },
  "station_info": {
    "title": "Station Information",
    "status": {
      "active": "Active",
      "inactive": "Inactive",
      "defective": "Defective"
    },
    "sections": {
      "basic_info": "Basic Information",
      "contact_info": "Contact Information",
      "location": "Location",
      "data_transmission": "Data Transmission",
      "technical_info": "Technical Information",
      "integration": "Integration",
      "last_measurement": "Last Measurement"
    },
    "labels": {
      "id": "ID",
      "imel": "IMEL",
      "created_date": "Created Date",
      "updated_date": "Updated Date",
      "user_phone": "User Phone Number",
      "device_phone": "Device Phone Number",
      "coordinates": "Coordinates",
      "send_data_time": "Send Data Time",
      "send_info_time": "Send Info Time",
      "program_version": "Program Version",
      "temperature": "Temperature",
      "battery": "Battery",
      "signal": "Signal",
      "integration_status": "Integration Status",
      "integration_date": "Integration Date",
      "water_level": "Water Level",
      "water_volume": "Water Volume",
      "correction": "Correction",
      "measurement_time": "Measurement Time"
    },
    "placeholders": {
      "not_entered": "Not entered",
      "not_set": "Not set",
      "unknown": "Unknown",
      "connected": "Connected"
    }
  }
};
static const Map<String,dynamic> _uz = {
  "app_name": "Suv Ombor Monitoring",
  "hello": "Salom",
  "login": "Kirish",
  "logout": "Chiqish",
  "username": "Foydalanuvchi nomi",
  "password": "Parol",
  "email": "Elektron pochta",
  "phone": "Telefon raqami",
  "language": {
    "select_language": "Tilni tanlang",
    "choose_language": "Dasturingiz tilini tanlang",
    "language_selected": "tili tanlandi",
    "continue": "Davom etish"
  },
  "welcome": {
    "title": "Reservo Sense tizmiga \nXush kelibsiz!",
    "subtitle": "Suv omborini aqlli va oson boshqaring",
    "description": "Zamonaviy texnologiya yordamida suv resurslarini samarali monitoring qiling",
    "sign_in": "Kirish",
    "sign_up": "Ro'yxatdan o'tish",
    "already_have_account": "Hisobingiz bormi?",
    "dont_have_account": "Hisobingiz yo'qmi?",
    "sign_up_info_title": "Ro'yxatdan o'tish haqida",
    "sign_up_info_1": "Dasturdan foydalanish uchun siz 'Smart Solutions System' MCHJ ning aloqa bo'limi bilan bog'lanib o'zizga tegishli bo'lgan login va parolni olishingiz mumkin.\n\n",
    "sign_up_info_2": "Qo'shimcha ma'lumotlar uchun:\n\n",
    "sign_up_info_3": "- Telefon: +998 99 834 11 93\n",
    "sign_up_info_4": "- Elektron pochta: sss.ird@mail.ru\n",
    "sign_up_info_5": "- Telegram: @dilshodjon216",
    "sign_up_button_ok": "Tushundim"
  },
  "buttons": {
    "save": "Saqlash",
    "cancel": "Bekor qilish",
    "delete": "O'chirish",
    "edit": "Tahrirlash",
    "add": "Qo'shish",
    "search": "Qidirish",
    "filter": "Filtrlash",
    "submit": "Yuborish",
    "confirm": "Tasdiqlash"
  },
  "messages": {
    "success": "Muvaffaqiyatli bajarildi",
    "error": "Xatolik yuz berdi",
    "loading": "Yuklanmoqda...",
    "no_data": "Ma'lumot topilmadi",
    "no_internet": "Internet aloqasi yo'q"
  },
  "validation": {
    "required": "Bu maydon to'ldirilishi shart",
    "invalid_email": "Noto'g'ri email format",
    "invalid_phone": "Noto'g'ri telefon raqam",
    "min_length": "Kamida {0} ta belgi bo'lishi kerak",
    "max_length": "Ko'pi bilan {0} ta belgi bo'lishi mumkin"
  },
  "home": {
    "latest_data": "Oxirgi ma'lumotlar",
    "station_info": "Stansiya ma'lumotlari",
    "map": "Xarita",
    "statistics": "Statistika",
    "settings": "Sozlamalar",
    "loading": "Ma'lumotlar yuklanmoqda...",
    "no_data_found": "Ma'lumot topilmadi",
    "no_data_available": "Ma'lumotlar yo'q",
    "retry": "Qayta urinish",
    "water_level": "Suv sathi:",
    "water_flow": "Suv sarfi:",
    "time": "Vaqti:",
    "error_occurred": "Xatolik yuz berdi",
    "fresh_data": "Yangi ma'lumot",
    "week_old": "1 haftalik",
    "stale_data": "Eski ma'lumot",
    "stations_statistics": "Stansiyalar statistikasi",
    "total_stations": "Umumiy stansiyalar",
    "working_stations": "Ishlayotgan stansiyalar",
    "not_working_stations": "Ishlamayotgan stansiyalar",
    "close": "Yopish"
  },
  "station_data": {
    "tabs": {
      "hourly": "SOATLIK",
      "yesterday": "KECHAGI",
      "monthly": "OYLIK",
      "yearly": "YILLIK",
      "custom": "TANLANGAN VAQT"
    },
    "titles": {
      "today_data": "Bugun kun ma'lumotlari",
      "yesterday_data": "Kechagi kun ma'lumotlari",
      "monthly_data": "oyining kunlik ma'lumotlari",
      "yearly_data": "yilning oylik ma'lumotlari",
      "custom_data": "Tanlangan vaqt oralig'i"
    },
    "labels": {
      "water_level": "Suv Sathi:",
      "water_volume": "Suv hajmi:",
      "correction": "Tuzatish:",
      "start_date": "Boshlanish",
      "end_date": "Tugash",
      "select": "Tanlang",
      "view_data": "Ma'lumotlarni ko'rish",
      "clear": "Tozalash",
      "from": "dan",
      "to": "gacha"
    },
    "messages": {
      "loading": "Ma'lumotlar yuklanmoqda...",
      "no_data": "Ma'lumot topilmadi",
      "no_data_desc": "Tanlangan sana oralig'ida ma'lumotlar mavjud emas",
      "error": "Xatolik yuz berdi",
      "retry": "Qayta urinish",
      "reload": "Qayta yuklash",
      "select_range": "Sana oralig'ini tanlang",
      "select_range_desc": "Yuqorida boshlanish va tugash sanalarini tanlab, ma'lumotlarni ko'ring"
    },
    "months": {
      "january": "Yanvar",
      "february": "Fevral",
      "march": "Mart",
      "april": "Aprel",
      "may": "May",
      "june": "Iyun",
      "july": "Iyul",
      "august": "Avgust",
      "september": "Sentabr",
      "october": "Oktabr",
      "november": "Noyabr",
      "december": "Dekabr"
    }
  },
  "station_info": {
    "title": "Stansiya ma'lumotlari",
    "status": {
      "active": "Faol",
      "inactive": "Faol emas",
      "defective": "Nosoz"
    },
    "sections": {
      "basic_info": "Asosiy ma'lumotlar",
      "contact_info": "Aloqa ma'lumotlari",
      "location": "Joylashuv",
      "data_transmission": "Ma'lumot yuborish",
      "technical_info": "Texnik ma'lumotlar",
      "integration": "Integratsiya",
      "last_measurement": "Oxirgi o'lchov"
    },
    "labels": {
      "id": "ID",
      "imel": "IMEL",
      "created_date": "Qo'yilgan sana",
      "updated_date": "Yangilangan sana",
      "user_phone": "Foydalanuvchi raqami",
      "device_phone": "Qurilma raqami",
      "coordinates": "Koordinatalar",
      "send_data_time": "Data yuborish vaqti",
      "send_info_time": "Info yuborish vaqti",
      "program_version": "Dastur versiyasi",
      "temperature": "Temperatura",
      "battery": "Batareya",
      "signal": "Signal",
      "integration_status": "Integratsiya holati",
      "integration_date": "Integratsiya sanasi",
      "water_level": "Suv sathi",
      "water_volume": "Suv hajmi",
      "correction": "Tuzatish",
      "measurement_time": "O'lchov vaqti"
    },
    "placeholders": {
      "not_entered": "Kiritilmagan",
      "not_set": "Belgilanmagan",
      "unknown": "Noma'lum",
      "connected": "Ulangan"
    }
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": _ru, "az": _az, "en": _en, "uz": _uz};
}
