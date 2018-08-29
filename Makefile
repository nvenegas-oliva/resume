
CC = xelatex
PERSONAL_DIR = personal
RESUME_DIR = $(PERSONAL_DIR)/resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: $(PERSONAL_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(PERSONAL_DIR) $<

clean:
	rm -rf $(PERSONAL_DIR)/*.pdf
