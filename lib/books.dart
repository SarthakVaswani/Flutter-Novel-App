class Book {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String author;
  final String year;
  final String pdfUrl;

  Book(
      {this.id,
      this.title,
      this.imageUrl,
      this.description,
      this.author,
      this.year,
      this.pdfUrl});
}

final bookList = [
  Book(
      id: '001',
      title: 'Harry Potter and the Philosoper\'s Stone',
      author: 'J.K Rowling',
      year: '1997 ',
      description:
          'Harry Potter, an eleven-year-old orphan, discovers that he is a wizard and is invited to study at Hogwarts. Even as he escapes a dreary life and enters a world of magic, he finds trouble awaiting him.',
      imageUrl: 'assets/images/hp1.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'
      ),
  Book(
      id: '002',
      title: 'Harry Potter and the Chamber of Secrets',
      author: 'J.K Rowling',
      year: '1998',
      description:
          'Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and the second novel in the Harry Potter series',
      imageUrl: 'assets/images/hp2.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'),
  Book(
      id: '003',
      title: 'Harry Potter and the Prisner of Azkaban',
      author: 'J.K Rowling',
      year: '1999',
      description:
          'Harry Potter learns that Sirius Black has escaped from the prison of Azkaban and is planning to kill him. Meanwhile, Hagrid is distraught when his hippogriff, Buckbeak, is sentenced to death.',
      imageUrl: 'assets/images/hp3.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'),
  Book(
      id: '004',
      title: 'Harry Potter and the Goblet Of Fire',
      author: 'J.K Rowling',
      year: '2000',
      description:
          'Harry Potter and the Goblet of Fire is a fantasy book written by British author J. K. Rowling and the fourth novel in the Harry Potter series',
      imageUrl: 'assets/images/hp4.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'),
  Book(
      id: '005',
      title: 'Harry Potter and the Order of Pheonix',
      author: 'J.K Rowling',
      year: '2003',
      description:
          'Harry Potter and the Order of the Phoenix is a fantasy novel written by British author J. K. Rowling and the fifth novel in the Harry Potter series',
      imageUrl: 'assets/images/hp5.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'),
  Book(
      id: '006',
      title: 'Harry Potter and the Half Blood Prince',
      author: 'J.K Rowling',
      year: '2005',
      description: 'Harry Potter and the Half-Blood Prince is a fantasy novel written by British author J.K. Rowling and the sixth and penultimate novel in the Harry Potter series.',
      imageUrl: 'assets/images/hp6.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'),
  Book(
      id: '007',
      title: 'Harry Potter and the Deathly Hallows',
      author: 'J.K Rowling',
      year: '2007',
     description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
     imageUrl: 'assets/images/hp7.jpg',
      pdfUrl : 'https://drive.google.com/file/d/1uohm0nAysIZO308AUFjjPlnUEMFqRhGv/view?usp=sharing'),
];

final bestsellers = [
  Book(
      id: '8',
      title: 'The Subtle Art of Not Giving a F*ck  ',
      author: 'Mark Manson',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/subtle.jpg'),
  Book(
      id: '9',
      title: 'The Alchemist',
      author: 'Paulo Coelhp',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/alchemist.jpg'),
  Book(
      id: '10',
      title: 'The Adventures of Sherlock_Holmes.',
      author: 'Arthur Conan Doyle',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/Sherlock_Holmes.jpg'),
  Book(
      id: '11',
      title: 'Harry Potter 1',
      author: 'J.K Rowling',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/hp1.jpg'),
];

final foryou = [
  Book(
      id: '12',
      title: 'The Fault in Our Stars',
      author: 'John Green',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/fault.jpg'),
  Book(
      id: '13',
      title: 'Goosebumps',
      author: 'R.L Stine',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/goosebumps.jpg'),
  Book(
      id: '14',
      title: 'Looking for alaska',
      author: 'J.K Rowling',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/finding_alaska.jpg'),
  Book(
      id: '15',
      title: 'The Fault in Our Stars',
      author: 'J.K Rowling',
      year: '1998',
      description: 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series',
      imageUrl: 'assets/images/fault.jpg'),
];
