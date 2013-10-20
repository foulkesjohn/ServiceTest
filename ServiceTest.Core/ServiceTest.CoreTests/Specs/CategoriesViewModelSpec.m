#import "Specta.h"
#import "Expecta.h"
#import "CategoriesViewModel.h"
#import "OCMock.h"
#import "CategoryService.h"
#import "ArrangeCategories.h"

SpecBegin(CategoriesViewModel)

__block CategoriesViewModel *subject;
__block id categoryService;

beforeEach(^{
    categoryService = [OCMockObject mockForProtocol: @protocol(CategoryService)];
    
    NSArray *unsortedCategories = [ArrangeCategories unsortedCategories];
    [[[categoryService stub] andReturn: unsortedCategories] sortedCategories];
    
    subject = [[CategoriesViewModel alloc] initWithCategoryService: categoryService];
});

describe(@"when loaded", ^{
    
    it(@"should have correct number of categories", ^{
        NSArray *categories = subject.categories;
        EXP_expect(categories).to.haveCountOf(3);
    });
    
});

SpecEnd