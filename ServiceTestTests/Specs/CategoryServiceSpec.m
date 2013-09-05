#import "Specta.h"
#import "Expecta.h"
#import "CategoryService.h"
#import "Category.h"
#import "OCMock.h"
#import "ArrangeCategories.h"

SpecBegin(CategoryService)

describe(@"Category Service", ^{
    
    __block CategoryService *subject;
    __block id categoryRepo;
    
    beforeEach(^{
        categoryRepo = [OCMockObject mockForProtocol: @protocol(Repository)];
        
        NSArray *unsortedProducts = [ArrangeCategories unsortedCategories];
        [[[categoryRepo stub] andReturn: unsortedProducts] all];
        
        subject = [[CategoryService alloc] initWithCategoryRepository: categoryRepo];
    });
    
    it(@"should return sorted products", ^{
        
        NSArray *expected = @[@1,@2,@3];
        NSArray *actual = [subject.sortedCategories valueForKey: @"displayOrder"];
        
        for (int i = 0; i < [expected count]; i++)
        {
            id expectedOrder = expected[i];
            id actualOrder = actual[i];
            EXP_expect(actualOrder).equal(expectedOrder);
        }
        
    });
    
});

SpecEnd