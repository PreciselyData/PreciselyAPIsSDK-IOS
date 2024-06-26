#import "PBDefaultConfiguration.h"
#import "PBBasicAuthTokenProvider.h"
#import "PBLogger.h"
#import "AFNetworking/AFHTTPSessionManager.h"

@interface PBDefaultConfiguration ()

@property (nonatomic, strong) NSMutableDictionary *mutableDefaultHeaders;
@property (nonatomic, strong) NSMutableDictionary *mutableApiKey;
@property (nonatomic, strong) NSMutableDictionary *mutableApiKeyPrefix;

@end

@implementation PBDefaultConfiguration

#pragma mark - Singleton Methods

+ (instancetype) sharedConfig {
    static PBDefaultConfiguration *shardConfig = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shardConfig = [[self alloc] init];
    });
    return shardConfig;
}

#pragma mark - Initialize Methods

- (instancetype) init {
    self = [super init];
    if (self) {
        self.apiClient = nil;
        self.host = @"https://api.precisely.com";
        self.username = @"";
        self.password = @"";
        self.accessToken= @"";
        self.verifySSL = YES;
        self.mutableApiKey = [NSMutableDictionary dictionary];
        self.mutableApiKeyPrefix = [NSMutableDictionary dictionary];
        self.mutableDefaultHeaders = [NSMutableDictionary dictionary];
        self.mutableDefaultHeaders[@"User-Agent"] = [NSString stringWithFormat:@"Swagger-Codegen/18.1.0/objc (%@; iOS %@; Scale/%0.2f)",[[UIDevice currentDevice] model], [[UIDevice currentDevice] systemVersion], [[UIScreen mainScreen] scale]];
        self.logger = [PBLogger sharedLogger];
        self.oAuthTokenURL=@"https://api.precisely.com/oauth/token";
    }
    return self;
}

#pragma mark - Instance Methods

- (NSString *) getApiKeyWithPrefix:(NSString *)key {
    NSString *prefix = self.apiKeyPrefix[key];
    NSString *apiKey = self.apiKey[key];
    if (prefix && apiKey != (id)[NSNull null] && apiKey.length > 0) { // both api key prefix and api key are set
        return [NSString stringWithFormat:@"%@ %@", prefix, apiKey];
    }
    else if (apiKey != (id)[NSNull null] && apiKey.length > 0) { // only api key, no api key prefix
        return [NSString stringWithFormat:@"%@", self.apiKey[key]];
    }
    else { // return empty string if nothing is set
        return @"";
    }
}

- (NSString *) getBasicAuthToken {
    // return empty string if username and password are empty
    if (self.username.length == 0 && self.password.length == 0){
        return  @"";
    }

    NSString *basicAuthCredentials = [NSString stringWithFormat:@"%@:%@", self.username, self.password];
    NSData *data = [basicAuthCredentials dataUsingEncoding:NSUTF8StringEncoding];
    basicAuthCredentials = [NSString stringWithFormat:@"Basic %@", [data base64EncodedStringWithOptions:0]];

    return basicAuthCredentials;
}

- (NSString *) getAccessToken {
    if (self.accessToken.length == 0) { // token not set, return empty string
        return @"";
    } else {
        return [NSString stringWithFormat:@"Bearer %@", self.accessToken];
    }
}

#pragma mark - Setter Methods

- (void) setApiKey:(NSString *)apiKey forApiKeyIdentifier:(NSString *)identifier {
    [self.mutableApiKey setValue:apiKey forKey:identifier];
}

- (void) removeApiKey:(NSString *)identifier {
    [self.mutableApiKey removeObjectForKey:identifier];
}

- (void) setApiKeyPrefix:(NSString *)prefix forApiKeyPrefixIdentifier:(NSString *)identifier {
    [self.mutableApiKeyPrefix setValue:prefix forKey:identifier];
}

- (void) removeApiKeyPrefix:(NSString *)identifier {
    [self.mutableApiKeyPrefix removeObjectForKey:identifier];
}

#pragma mark - Getter Methods

- (NSDictionary *) apiKey {
    return [NSDictionary dictionaryWithDictionary:self.mutableApiKey];
}

- (NSDictionary *) apiKeyPrefix {
    return [NSDictionary dictionaryWithDictionary:self.mutableApiKeyPrefix];
}

#pragma mark -

- (NSDictionary *) authSettings {
    return @{
               @"oAuth2Password":
                   @{
                       @"type": @"oauth",
                       @"in": @"header",
                       @"key": @"Authorization",
                       @"value": [self getAccessToken]
                   },
               };
}

-(BOOL)debug {
    return self.logger.isEnabled;
}

-(void)setDebug:(BOOL)debug {
    self.logger.enabled = debug;
}

- (void)setDefaultHeaderValue:(NSString *)value forKey:(NSString *)key {
    if(!value) {
        [self.mutableDefaultHeaders removeObjectForKey:key];
        return;
    }
    self.mutableDefaultHeaders[key] = value;
}

-(void) removeDefaultHeaderForKey:(NSString*)key {
    [self.mutableDefaultHeaders removeObjectForKey:key];
}

- (NSString *)defaultHeaderForKey:(NSString *)key {
    return self.mutableDefaultHeaders[key];
}

- (NSDictionary *)defaultHeaders {
    return [self.mutableDefaultHeaders copy];
}


- (void) generateAndSetAccessToken:(void (^)(id, NSError *))completionBlock;
{
__block NSString *accessToken;
if(self.oAuthApiKey !=0 && self.oAuthSecret !=0)
{
NSURL *baseLIURL = [NSURL URLWithString:self.oAuthTokenURL];
NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
[parameters setObject:@"client_credentials" forKey:@"grant_type"];
AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseLIURL];
[manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
[manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
[manager.requestSerializer setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
[manager.requestSerializer setAuthorizationHeaderFieldWithUsername:self.oAuthApiKey password:self.oAuthSecret];
[manager POST:self.oAuthTokenURL parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject){
accessToken=[responseObject objectForKey:@"access_token"];
completionBlock(accessToken,nil);
} failure:^(NSURLSessionDataTask *task, NSError *error) {
completionBlock(nil,error);
}];
}
}





@end
