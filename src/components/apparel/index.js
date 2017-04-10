import { h } from 'preact';

export const Apparel = () => (
  <section class="apparel">
    <div class="container">
      <h2>MadJS Apparel</h2>
      <div class="grid">
        <div class="col-2-3">
          <p>
            Shirts in many different styles and colors can be purchased from our shop
            at <a href="http://skreened.com/madjs/madjs-logo">Skreened</a>.
          </p>
          <div class="button-wrapper">
            <a href="http://skreened.com/madjs/madjs-logo" class="button">Order Now!</a>
          </div>
        </div>
        <div class="col-1-3">
          <img src="assets/shirt.jpg" alt="MadJS Shirt" class="picture" />
        </div>
      </div>
    </div>
  </section>
);
