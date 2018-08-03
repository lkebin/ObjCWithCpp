
#import "ViewController.h"
#import "CplusplusMMClass.h"

@interface ViewController ()
@property (nonatomic, strong) CplusplusMMClass *mmclass;
@property (weak, nonatomic) IBOutlet UILabel *lblHello;
- (void)populatelabel:(NSString*)str;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    self.mmclass = [[CplusplusMMClass alloc]init];  // bad practice; but showing code
    NSString *str = [self.mmclass fetchStringFromCplusplus];
    [self populatelabel:str];
}

- (void)populatelabel:(NSString*)str {
    self.lblHello.text = str;
}

@end
