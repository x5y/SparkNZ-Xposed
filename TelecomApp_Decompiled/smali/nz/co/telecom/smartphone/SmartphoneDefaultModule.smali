.class public Lnz/co/telecom/smartphone/SmartphoneDefaultModule;
.super Lcom/google/inject/AbstractModule;
.source "SmartphoneDefaultModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    const-class v0, Lnz/co/telecom/smartphone/controller/LineControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/LineController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 93
    const-class v0, Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/ExtrasController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 94
    const-class v0, Lnz/co/telecom/smartphone/controller/OrdersControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/OrdersController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 95
    const-class v0, Lnz/co/telecom/smartphone/controller/TopupControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/TopupController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 96
    const-class v0, Lnz/co/telecom/smartphone/controller/ConfigControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/ConfigController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 97
    const-class v0, Lnz/co/telecom/smartphone/controller/AccountControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/AccountController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 98
    const-class v0, Lnz/co/telecom/smartphone/service/LineServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/LineService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 99
    const-class v0, Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/ExtrasService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 100
    const-class v0, Lnz/co/telecom/smartphone/service/OrdersServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/OrdersService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 101
    const-class v0, Lnz/co/telecom/smartphone/service/TopupServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/TopupService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 102
    const-class v0, Lnz/co/telecom/smartphone/service/ConfigServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/ConfigService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 103
    const-class v0, Lnz/co/telecom/smartphone/service/AccountServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/AccountService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 104
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 105
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 106
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 107
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 108
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 109
    const-class v0, Lnz/co/telecom/smartphone/controller/BuyExtrasControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/BuyExtrasController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 110
    const-class v0, Lnz/co/telecom/smartphone/service/BuyExtrasServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/BuyExtrasService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 111
    const-class v0, Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/RegistrationController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 112
    const-class v0, Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/RegistrationService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 113
    const-class v0, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 114
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 115
    const-class v0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 116
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/RestfulClient;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 117
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/util/NetworkUtils;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 118
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 119
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 120
    const-class v0, Lnz/co/telecom/smartphone/controller/CreditCardControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/CreditCardController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 121
    const-class v0, Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/CreditCardService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 122
    const-class v0, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/AccessControlController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 123
    const-class v0, Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/AccessControlService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 124
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 125
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/OrdersService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 126
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/ExtrasService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 127
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/LineService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 128
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/analytics/TrackingHelper;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 129
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/fragments/MainFragment;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 131
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/util/AndroidUtils;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 134
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/RecentActivityService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 135
    const-class v0, Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/RecentActivityController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 136
    const-class v0, Lnz/co/telecom/smartphone/service/RecentActivityServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/RecentActivityService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 137
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 141
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 142
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 143
    const-class v0, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 144
    const-class v0, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 149
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lnz/co/telecom/smartphone/service/MyAccountService;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 150
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 151
    const-class v0, Lnz/co/telecom/smartphone/controller/MyAccountControllerInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/MyAccountController;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 152
    const-class v0, Lnz/co/telecom/smartphone/service/MyAccountServiceInterface;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/SmartphoneDefaultModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/MyAccountService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 153
    return-void
.end method
