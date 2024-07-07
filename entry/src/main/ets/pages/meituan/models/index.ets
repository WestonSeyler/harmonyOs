export class FoodItem{
  id: number  = 0;
  name: string = '';
  like_ratio_desc?: string = '';
  food_tag_list?: string[] = [];
  price: number = 0;
  picture?: string = '';
  description?: string = '';
  tag?: string = '';
  month_saled?: number = 0;
}

export class Category{
  tag:string=''
  name:string=''
  food:FoodItem[]=[
    {
      id: 1,
      name: 'Classic Burger',
      price: 8.99,
      description: 'Delicious classic beef burger',
      month_saled:20
    },
  ]

}

