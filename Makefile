.PHONY: examples

CC = xelatex
PERSONAL_DIR = personal
RESUME_DIR = $(PERSONAL_DIR)/resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

personal: $(foreach x, resume, $x.pdf)

resume.pdf: $(PERSONAL_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(PERSONAL_DIR) $<

clean:
	rm -rf $(PERSONAL_DIR)/*.pdfw
