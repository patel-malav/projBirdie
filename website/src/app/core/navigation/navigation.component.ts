import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'pb-navigation',
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.scss']
})
export class NavigationComponent implements OnInit {

  open = false;

  constructor() { }

  ngOnInit(): void {
  }

  toggle() {
    this.open = !this.open;
  }
}
