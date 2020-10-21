class Call {
  String name;
  String time;
  int frequency;
  bool isIncoming; // incoming or outgoing
  bool isAudioCall; // audioCall or videoCall
  String imgUrl;

  Call({
    this.name,
    this.time,
    this.frequency,
    this.isIncoming,
    this.isAudioCall,
    this.imgUrl,
  });
}

List<Call> calls = [
  Call(
    name: 'Ayo Ogunseinde',
    time: '18 October, 7:57 pm',
    frequency: 2,
    isIncoming: false,
    isAudioCall: false,
    imgUrl:
        'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ),
  Call(
    name: 'Ivana Cajina',
    time: '18 October, 7:32 pm',
    frequency: 3,
    isIncoming: true,
    isAudioCall: true,
    imgUrl:
        'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80',
  ),
  Call(
    name: 'Matheus Ferrero',
    time: '21 October, 6:57 am',
    frequency: 1,
    isIncoming: false,
    isAudioCall: true,
    imgUrl:
        'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  Call(
    name: 'Dmitriy',
    time: '21 September, 12:01 pm',
    frequency: 3,
    isIncoming: false,
    isAudioCall: false,
    imgUrl:
        'https://images.unsplash.com/photo-1509955252650-8f558c2b8735?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80',
  ),
  Call(
    name: 'Alex Iby',
    time: '24 September, 8:31 pm',
    frequency: 1,
    isIncoming: true,
    isAudioCall: true,
    imgUrl:
        'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80',
  ),
  Call(
    name: 'Anastasiya Pavlova',
    time: '25 October, 7:57 am',
    frequency: 1,
    isIncoming: false,
    isAudioCall: true,
    imgUrl:
        'https://images.unsplash.com/photo-1568967729548-e3dbad3d37e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  Call(
    name: 'Štefan Štefančík',
    time: '26 October, 9:07 am',
    frequency: 2,
    isIncoming: false,
    isAudioCall: false,
    imgUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
  ),
];
