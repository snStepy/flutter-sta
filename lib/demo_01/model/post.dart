class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
  // final 的 意思 是 一旦 这个变量分配了值 就就不能改变了 
  //String title 说的是title的类型是 string(字符串) 类型
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'first title1',
    author: 'lewis',
    imageUrl: 'http://dummyimage.com/400x400'
  ),
  Post(
    title: 'first title2',
    author: 'lewis1',
    imageUrl: 'http://dummyimage.com/400x400'
  ),
  Post(
    title: 'first title3',
    author: 'lewis2',
    imageUrl: 'http://dummyimage.com/400x400'
  ),
  Post(
    title: 'first title4',
    author: 'lewis3',
    imageUrl: 'http://dummyimage.com/400x400'
  ),
  Post(
    title: 'first title5',
    author: 'lewis4',
    imageUrl: 'http://dummyimage.com/400x400'
  ),
];