class NotesController < ApplicationController
  def index
    @note = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
  
    if @note.update(note_params)
      redirect_to notes_path
    else
      render :edit
    end

    def destroy
      Note.find(params[:id]).destroy
      redirect_to notes_path
    end
  end




end
