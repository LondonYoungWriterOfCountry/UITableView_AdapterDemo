# UITableView_AdapterDemo

## Adapter层数据捆绑。

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

## 2017.04.11  ---------

（1）：添加cell自适应高度

本文cell自适应高度采用iOS8 self-sizing-cell 方式，只需满足三个条件：

1：tableView.estimatedRowHeight = 44;(一个估算的高度)

2：tableView.rowHeight = UITableViewAutomaticDimension;(iOS8之后，UITableViewAutomaticDimension为系统默认，也可以不写)

3：cell.contentView的子控件与contentView的四条边满足约束关系（子控件需添加到contentView上）。

（2）：cell内视图的autolayout布局

nameLabel和ageLabel约束如下：

```
    [_nameLabel zxp_addConstraints:^(ZXPAutoLayoutMaker *layout) {
        
        layout.leftSpace(10);
        layout.rightSpace(10);
        layout.topSpace(10);
        layout.bottomSpaceByView(_ageLabel, 10);
        layout.autoHeight();
        
    }];
    
    [_ageLabel zxp_addConstraints:^(ZXPAutoLayoutMaker *layout) {
        
        layout.leftSpace(10);
        layout.rightSpace(10);
        layout.bottomSpace(10);
        layout.autoHeight();
        
    }];
```

约束好之后，搭配self-sizing-cell就能使cell自适应高度。




