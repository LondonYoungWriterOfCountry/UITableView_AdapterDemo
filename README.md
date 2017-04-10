# UITableView_AdapterDemo
Adapter层数据捆绑。


几乎所有App都设计到UITableView的开发，so在cell与model的数据捆绑的时候，楼主选择了在Adapter层进行。，并返回cell给cellForRowAtIndexPath代理。
```
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    UITableViewModel *model = self.viewModel.dataArray[indexPath.row];
    return [TableViewAdatper setCellMessages:cell Model:model];
    
}
```
