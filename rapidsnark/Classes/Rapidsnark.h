@interface Rapidsnark : NSObject

-(NSDictionary *) groth16_prover:(NSString *)zkeyBytes1 witnessData:(NSString *)wtnsBytes1;

@end
