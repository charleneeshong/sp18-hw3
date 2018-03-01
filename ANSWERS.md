## Questions

1. What does the second 'nil' argument in the line 6 text_field_tag of teachers/new.html.erb represent?

According to the API,
	text_field_tag(name, value = nil, options = {}) public
the second argument is some value that can be assigned to the text_field_tag (though the default is nil). I think it's been put there so that we have a second argument defined and can thus also include the third argument (our placeholder).

2. Go to `localhost:3000/teachers` in your browser; why does this not work?

Because we have only routed POST requests to /teachers not GET requests, so it has nothing to display.

3. What type of request did your browser just perform?

POST

4. Go back to `localhost:3000/teachers/new`; submit the form again. What URL do you end up at?

http://localhost:3000/teachers

5. Why does `localhost:3000/teachers` work now?

Because we routed the POST request to 'localhost:3000/teachers' to: 'teachers#create', which calls upon the create method in our TeachersController which includes the line
	render 'show'
which renders the show.html.erb file we created in app/views/teachers (Rails automatically searches for a template called teachers/show in app/views). Without the 'render' command, we wouldn't be redirected to 'localhost:3000/teachers'.