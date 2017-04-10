# UITableView_AdapterDemo
Adapter层数据捆绑。


几乎所有App项目都设计到UITableView的开发，so 在cell与model的数据捆绑的时候，楼主选择了在Adapter层进行。，并返回cell给cellForRowAtIndexPath代理。

```
+ (TableViewCell *)setCellMessages:(TableViewCell *)cell Model:(UITableViewModel *)model{
    
    cell.nameLabel.text = model.name;
    cell.ageLabel.text = [NSString stringWithFormat:@"%ld",model.age];
    
    return cell;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    UITableViewModel *model = self.viewModel.dataArray[indexPath.row];
    return [TableViewAdatper setCellMessages:cell Model:model];
    
}
```

ViewModel层中，进行获取数据，最普遍的是网络请求，数据转模型。（demo中只是简单的创建一些model）

View层中，cell进行图形化展示、布局适配。
