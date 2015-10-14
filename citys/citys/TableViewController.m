//
//  TableViewController.m
//  citys
//
//  Created by ian on 15/10/14.
//  Copyright © 2015年 ian. All rights reserved.
//

#import "TableViewController.h"
#import "pinyin.h"
@interface TableViewController ()
@property (nonatomic, strong)NSMutableArray *citys;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray*citys=[NSArray arrayWithContentsOfFile:@"/Users/Ian/Desktop/My-App-test/citys/citys/citys.plist"];
    NSMutableDictionary*cityDic=[NSMutableDictionary dictionary];
    for (NSString*city in citys) {
        char first=pinyinFirstLetter([city characterAtIndex:0]);
        NSString*fStr=[NSString stringWithUTF8String:&first];
       
        if (![cityDic objectForKey:fStr]) {
            NSMutableArray*cityArr=[NSMutableArray array];
            [cityArr addObject:city];
            [cityDic setObject:cityArr forKey:fStr];
        }else{
            NSMutableArray*oldCityArr=[cityDic objectForKey:fStr];
            [oldCityArr addObject:city];
        }
    }
    
    NSArray*keys=[cityDic.allKeys sortedArrayUsingSelector:@selector(compare:)];
    for (NSString*key in keys) {
        NSArray*citysArr=[cityDic objectForKey:key];
        for (NSString*city in citysArr) {
//            NSLog(@"%@",city);
            [self.citys addObject:city];
           
        }
    }
  [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.citys.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text=self.citys[indexPath.row];

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
