#import "Specta.h"
#import "Expecta.h"
#import "ProductsService.h"
#import "Product.h"
#import "OCMock.h"
#import "ArrangeProducts.h"

SpecBegin(ProductService)

describe(@"Product Service", ^{
    
    __block ProductsService *subject;
    __block id productsRepo;
    
    beforeEach(^{
        productsRepo = [OCMockObject mockForProtocol: @protocol(Repository)];
        
        NSArray *unsortedProducts = [ArrangeProducts unsortedProducts];
        [[[productsRepo stub] andReturn: unsortedProducts] all];
        
        subject = [[ProductsService alloc] initWithProductsRepository: productsRepo];
    });
    
    it(@"should return sorted products", ^{
       
        NSArray *expected = @[@1,@2,@3];
        NSArray *actual = [subject.sortedProducts valueForKey: @"displayOrder"];
        
        for (int i = 0; i < [expected count]; i++)
        {
            id expectedOrder = expected[i];
            id actualOrder = actual[i];
            EXP_expect(actualOrder).equal(expectedOrder);
        }
        
    });
    
});

SpecEnd