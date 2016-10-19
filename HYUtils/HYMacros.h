//
//  HYMacros.h
//

#define S(fmat, ...) [NSString stringWithFormat:fmat, ##__VA_ARGS__]
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )


#define LOG(format, ...)    DDLogVerbose(format, ##__VA_ARGS__)
#define LOGTrace            DDLogVerbose(@"")
#define LOGInfoTrace        DDLogInfo(@"")
