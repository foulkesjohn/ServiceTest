#import "Specta.h"
#import "OCMock.h"
#import "Expecta.h"
#import "ProductsViewModel.h"
#import "ArrangeProducts.h"
#import "Product.h"

SpecBegin(ProductsViewModel)

__block ProductsViewModel *subject;
__block id productsService;

beforeEach(^{
    productsService = [OCMockObject mockForProtocol: @protocol(ProductsService)];
    
    NSArray *unsortedProducts = [ArrangeProducts unsortedProducts];
    [[[productsService stub] andReturn: unsortedProducts] sortedProducts];
    
    subject = [[ProductsViewModel alloc] initWithProductsService: productsService];
});

describe(@"when loaded", ^{
    
    it(@"should have correct number of products", ^{
        NSArray *products = subject.products;
        EXP_expect(products).to.haveCountOf(3);
    });
    
});

describe(@"when save all products called", ^{
        
    it(@"should call product service save correct number of times", ^{
        [[productsService expect] saveProduct:[OCMArg any]];
        [[productsService expect] saveProduct:[OCMArg any]];
        [[productsService expect] saveProduct:[OCMArg any]];
        [subject saveProducts];
        [productsService verify];
    });
    
});

SpecEnd